defmodule XebowWeb.AnimationConfigComponent do
  use XebowWeb, :live_component

  @mapping %{
    RGBMatrix.Animation.Config.Option => XebowWeb.AnimationConfigOptionComponent,
    RGBMatrix.Animation.Config.Integer => XebowWeb.AnimationConfigIntegerComponent
  }

  def component_for(module) do
    Map.fetch!(@mapping, module)
  end
end
