require 'spec_helper'

describe "Satic_pages" do 

	subject{page}

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}

	describe "Home page" do
		before {visit root_path}

		it{should have_selector('h1', text:'Sample App')}
		it{should have_selector('title', text: full_title(''))}
	end

	describe "Help page" do
		before {visit help_path}

		it {should have_selector('h1', text:'Help')}
		it {should have_selector('title', text: full_title('Help'))}
	end

	describe "About page" do

		before {visit about_path}

		it {should have_selector('h1', text:'About')}
		it {should have_selector('title', text: full_title('About'))}
	end

	describe "Contact" do

		before {visit contact_path}

		it {should have_selector('h1', text:'Contact')}
		it {should have_selector('title', text: full_title('Contact'))}
	end


	
end