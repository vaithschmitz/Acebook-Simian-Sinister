# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:profile_picture])
  end
end
