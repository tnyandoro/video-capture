require "application_system_test_case"

class SelfiesTest < ApplicationSystemTestCase
  setup do
    @selfy = selfies(:one)
  end

  test "visiting the index" do
    visit selfies_url
    assert_selector "h1", text: "Selfies"
  end

  test "should create selfie" do
    visit selfies_url
    click_on "New selfie"

    fill_in "Title", with: @selfy.title
    click_on "Create Selfie"

    assert_text "Selfie was successfully created"
    click_on "Back"
  end

  test "should update Selfie" do
    visit selfy_url(@selfy)
    click_on "Edit this selfie", match: :first

    fill_in "Title", with: @selfy.title
    click_on "Update Selfie"

    assert_text "Selfie was successfully updated"
    click_on "Back"
  end

  test "should destroy Selfie" do
    visit selfy_url(@selfy)
    click_on "Destroy this selfie", match: :first

    assert_text "Selfie was successfully destroyed"
  end
end
