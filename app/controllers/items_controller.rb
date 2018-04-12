class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items
  end
  def create
    item = Item.create(resoruce_params)
    render json: item
  end
  def destroy
  item =Item.find(params[:id])
  item.destroy
  render json: item
  end
  private

  def resoruce_params
    params.require(:item).permit(:name)
  end
end
