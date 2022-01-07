
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8985_priv {int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8985_BIASEN ;
 int WM8985_BIASEN_MASK ;
 int WM8985_OUT4_TO_ADC ;
 int WM8985_OUTPUT_CTRL0 ;
 int WM8985_POBCTRL ;
 int WM8985_POBCTRL_MASK ;
 int WM8985_POWER_MANAGEMENT_1 ;
 int WM8985_POWER_MANAGEMENT_2 ;
 int WM8985_POWER_MANAGEMENT_3 ;
 int WM8985_TSDEN ;
 int WM8985_TSDEN_MASK ;
 int WM8985_TSOPCTRL ;
 int WM8985_TSOPCTRL_MASK ;
 int WM8985_VMIDSEL_MASK ;
 int WM8985_VMIDSEL_SHIFT ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8985_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8985_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 int ret;
 struct wm8985_priv *wm8985;

 wm8985 = snd_soc_component_get_drvdata(component);
 switch (level) {
 case 130:
 case 129:

  snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_1,
        WM8985_VMIDSEL_MASK,
        1 << WM8985_VMIDSEL_SHIFT);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8985->supplies),
          wm8985->supplies);
   if (ret) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }

   regcache_sync(wm8985->regmap);


   snd_soc_component_update_bits(component, WM8985_OUT4_TO_ADC,
         WM8985_POBCTRL_MASK,
         WM8985_POBCTRL);

   snd_soc_component_update_bits(component, WM8985_OUTPUT_CTRL0,
         WM8985_TSDEN_MASK, WM8985_TSDEN);
   snd_soc_component_update_bits(component, WM8985_OUTPUT_CTRL0,
         WM8985_TSOPCTRL_MASK,
         WM8985_TSOPCTRL);

   snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_1,
         WM8985_BIASEN_MASK, WM8985_BIASEN);

   snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_1,
         WM8985_VMIDSEL_MASK,
         1 << WM8985_VMIDSEL_SHIFT);
   msleep(500);

   snd_soc_component_update_bits(component, WM8985_OUT4_TO_ADC,
         WM8985_POBCTRL_MASK, 0);
  }

  snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_1,
        WM8985_VMIDSEL_MASK,
        2 << WM8985_VMIDSEL_SHIFT);
  break;
 case 131:

  snd_soc_component_update_bits(component, WM8985_OUTPUT_CTRL0,
        WM8985_TSOPCTRL_MASK, 0);
  snd_soc_component_update_bits(component, WM8985_OUTPUT_CTRL0,
        WM8985_TSDEN_MASK, 0);

  snd_soc_component_update_bits(component, WM8985_POWER_MANAGEMENT_1,
        WM8985_VMIDSEL_MASK | WM8985_BIASEN_MASK,
        0);
  snd_soc_component_write(component, WM8985_POWER_MANAGEMENT_1, 0);
  snd_soc_component_write(component, WM8985_POWER_MANAGEMENT_2, 0);
  snd_soc_component_write(component, WM8985_POWER_MANAGEMENT_3, 0);

  regcache_mark_dirty(wm8985->regmap);

  regulator_bulk_disable(ARRAY_SIZE(wm8985->supplies),
           wm8985->supplies);
  break;
 }

 return 0;
}
