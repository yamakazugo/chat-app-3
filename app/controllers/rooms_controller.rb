class RoomsController < ApplicationController

  def index
  end
  
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(rooms_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
   def rooms_params
    params.require(:room).permit(:name, user_ids: [])
   end
end
