
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct da7218_priv {int jack; int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int DA7218_BIAS_EN_MASK ;
 int DA7218_LDO_CTRL ;
 int DA7218_LDO_EN_MASK ;
 int DA7218_REFERENCES ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int da7218_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:

  if (snd_soc_component_get_bias_level(component) == 128) {
   if (da7218->mclk) {
    ret = clk_prepare_enable(da7218->mclk);
    if (ret) {
     dev_err(component->dev, "Failed to enable mclk\n");
     return ret;
    }
   }
  }

  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   snd_soc_component_update_bits(component, DA7218_REFERENCES,
         DA7218_BIAS_EN_MASK,
         DA7218_BIAS_EN_MASK);


   snd_soc_component_update_bits(component, DA7218_LDO_CTRL,
         DA7218_LDO_EN_MASK,
         DA7218_LDO_EN_MASK);
  } else {

   if (da7218->mclk)
    clk_disable_unprepare(da7218->mclk);
  }
  break;
 case 131:

  if (!da7218->jack) {

   snd_soc_component_update_bits(component, DA7218_LDO_CTRL,
         DA7218_LDO_EN_MASK, 0);


   snd_soc_component_update_bits(component, DA7218_REFERENCES,
         DA7218_BIAS_EN_MASK, 0);
  }
  break;
 }

 return 0;
}
