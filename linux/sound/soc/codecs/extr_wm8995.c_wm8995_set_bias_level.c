
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8995_priv {int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8995_BG_ENA ;
 int WM8995_BG_ENA_MASK ;
 int WM8995_POWER_MANAGEMENT_1 ;
 int dev_err (int ,char*,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8995_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wm8995_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8995_priv *wm8995;
 int ret;

 wm8995 = snd_soc_component_get_drvdata(component);
 switch (level) {
 case 130:
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8995->supplies),
          wm8995->supplies);
   if (ret)
    return ret;

   ret = regcache_sync(wm8995->regmap);
   if (ret) {
    dev_err(component->dev,
     "Failed to sync cache: %d\n", ret);
    return ret;
   }

   snd_soc_component_update_bits(component, WM8995_POWER_MANAGEMENT_1,
         WM8995_BG_ENA_MASK, WM8995_BG_ENA);
  }
  break;
 case 131:
  snd_soc_component_update_bits(component, WM8995_POWER_MANAGEMENT_1,
        WM8995_BG_ENA_MASK, 0);
  regulator_bulk_disable(ARRAY_SIZE(wm8995->supplies),
           wm8995->supplies);
  break;
 }

 return 0;
}
