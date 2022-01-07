
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tas571x_private {int mclk; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct tas571x_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int tas571x_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 struct tas571x_private *priv = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   if (!IS_ERR(priv->mclk)) {
    ret = clk_prepare_enable(priv->mclk);
    if (ret) {
     dev_err(component->dev,
      "Failed to enable master clock: %d\n",
      ret);
     return ret;
    }
   }
  }
  break;
 case 131:
  if (!IS_ERR(priv->mclk))
   clk_disable_unprepare(priv->mclk);
  break;
 }

 return 0;
}
