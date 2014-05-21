class HomeController < ApplicationController
  before_filter :authenticate!

  def index
  end

  private
  def authenticate!
    unless current_user
      redirect_to root_url
    end
  end
end
