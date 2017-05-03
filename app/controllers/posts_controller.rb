class PostsController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create]

  def new
    @group = Group.find(params[:group_id])
    @post = Post.new
  end


  private

  def post_params
    params.require(:post).permit(:content)
  end
end
