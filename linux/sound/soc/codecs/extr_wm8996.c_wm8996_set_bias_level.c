
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ldo_ena; } ;
struct wm8996_priv {int supplies; int regmap; TYPE_1__ pdata; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8996_MICB1_MODE ;
 int WM8996_MICB2_MODE ;
 int WM8996_MICBIAS_1 ;
 int WM8996_MICBIAS_2 ;
 int dev_err (int ,char*,int) ;
 int gpio_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8996_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wm8996_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8996_priv *wm8996 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;
 case 129:

  snd_soc_component_update_bits(component, WM8996_MICBIAS_1,
        WM8996_MICB1_MODE, 0);
  snd_soc_component_update_bits(component, WM8996_MICBIAS_2,
        WM8996_MICB2_MODE, 0);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8996->supplies),
          wm8996->supplies);
   if (ret != 0) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }

   if (wm8996->pdata.ldo_ena >= 0) {
    gpio_set_value_cansleep(wm8996->pdata.ldo_ena,
       1);
    msleep(5);
   }

   regcache_cache_only(wm8996->regmap, 0);
   regcache_sync(wm8996->regmap);
  }


  snd_soc_component_update_bits(component, WM8996_MICBIAS_1,
        WM8996_MICB1_MODE, WM8996_MICB1_MODE);
  snd_soc_component_update_bits(component, WM8996_MICBIAS_2,
        WM8996_MICB2_MODE, WM8996_MICB2_MODE);
  break;

 case 131:
  regcache_cache_only(wm8996->regmap, 1);
  if (wm8996->pdata.ldo_ena >= 0) {
   gpio_set_value_cansleep(wm8996->pdata.ldo_ena, 0);
   regcache_cache_only(wm8996->regmap, 1);
  }
  regulator_bulk_disable(ARRAY_SIZE(wm8996->supplies),
           wm8996->supplies);
  break;
 }

 return 0;
}
