require 'rails_helper'

describe 'add list process' do
  it 'adds new list to database' do
    visit lists_path
    click_link 'New List'
    fill_in 'Name', :with => 'I do not know'
    click_on 'Create List'
    expect(page).to have_content 'New List'
  end

  it "gives error when no name is entered" do
    visit new_list_path
    click_button 'Create List'
    expect(page).to have_content 'errors'
  end
end
