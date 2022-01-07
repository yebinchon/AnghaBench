
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8523_priv {int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8523_PSCTRL1 ;
 int WM8523_SYS_ENA_MASK ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8523_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int wm8523_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8523_priv *wm8523 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_update_bits(component, WM8523_PSCTRL1,
        WM8523_SYS_ENA_MASK, 3);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8523->supplies),
          wm8523->supplies);
   if (ret != 0) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }


   regcache_sync(wm8523->regmap);


   snd_soc_component_update_bits(component, WM8523_PSCTRL1,
         WM8523_SYS_ENA_MASK, 1);

   msleep(100);
  }


  snd_soc_component_update_bits(component, WM8523_PSCTRL1,
        WM8523_SYS_ENA_MASK, 2);

  break;

 case 131:

  snd_soc_component_update_bits(component, WM8523_PSCTRL1,
        WM8523_SYS_ENA_MASK, 0);
  msleep(100);

  regulator_bulk_disable(ARRAY_SIZE(wm8523->supplies),
           wm8523->supplies);
  break;
 }
 return 0;
}
