class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @roles = @user.roles
  end



  def add_oprate_role
    @user = User.find(params[:id])
    @user.add_role params[:oprate]
    flash[:notice] = '添加post_oprate权限'
    redirect_to @user
  end



  def remove_oprate_role
    @user = User.find(params[:id])
    @user.remove_role params[:oprate] 
    flash[:notice] = '移除post_oprate权限'
    redirect_to @user
  end


end
