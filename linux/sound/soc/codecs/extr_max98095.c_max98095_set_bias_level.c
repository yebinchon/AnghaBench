
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max98095_priv {int regmap; int mclk; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int IS_ERR (int ) ;
 int M98095_090_PWR_EN_IN ;
 int M98095_MBEN ;




 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int max98095_set_bias_level(struct snd_soc_component *component,
       enum snd_soc_bias_level level)
{
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:







  if (IS_ERR(max98095->mclk))
   break;

  if (snd_soc_component_get_bias_level(component) == 130) {
   clk_disable_unprepare(max98095->mclk);
  } else {
   ret = clk_prepare_enable(max98095->mclk);
   if (ret)
    return ret;
  }
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regcache_sync(max98095->regmap);

   if (ret != 0) {
    dev_err(component->dev, "Failed to sync cache: %d\n", ret);
    return ret;
   }
  }

  snd_soc_component_update_bits(component, M98095_090_PWR_EN_IN,
    M98095_MBEN, M98095_MBEN);
  break;

 case 131:
  snd_soc_component_update_bits(component, M98095_090_PWR_EN_IN,
    M98095_MBEN, 0);
  regcache_mark_dirty(max98095->regmap);
  break;
 }
 return 0;
}
