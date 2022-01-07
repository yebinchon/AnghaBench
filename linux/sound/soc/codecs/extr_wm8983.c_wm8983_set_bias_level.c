
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8983_priv {int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8983_BIASEN ;
 int WM8983_BIASEN_MASK ;
 int WM8983_DELEN ;
 int WM8983_DELEN_MASK ;
 int WM8983_OUT4_TO_ADC ;
 int WM8983_OUTPUT_CTRL ;
 int WM8983_POBCTRL ;
 int WM8983_POBCTRL_MASK ;
 int WM8983_POWER_MANAGEMENT_1 ;
 int WM8983_POWER_MANAGEMENT_2 ;
 int WM8983_POWER_MANAGEMENT_3 ;
 int WM8983_TSDEN ;
 int WM8983_TSDEN_MASK ;
 int WM8983_VMIDSEL_MASK ;
 int WM8983_VMIDSEL_SHIFT ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8983_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8983_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8983_priv *wm8983 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
 case 129:

  snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
        WM8983_VMIDSEL_MASK,
        1 << WM8983_VMIDSEL_SHIFT);
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regcache_sync(wm8983->regmap);
   if (ret < 0) {
    dev_err(component->dev, "Failed to sync cache: %d\n", ret);
    return ret;
   }

   snd_soc_component_update_bits(component, WM8983_OUT4_TO_ADC,
         WM8983_POBCTRL_MASK | WM8983_DELEN_MASK,
         WM8983_POBCTRL | WM8983_DELEN);

   snd_soc_component_update_bits(component, WM8983_OUTPUT_CTRL,
         WM8983_TSDEN_MASK, WM8983_TSDEN);

   snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
         WM8983_BIASEN_MASK, WM8983_BIASEN);

   snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
         WM8983_VMIDSEL_MASK,
         1 << WM8983_VMIDSEL_SHIFT);
   msleep(250);

   snd_soc_component_update_bits(component, WM8983_OUT4_TO_ADC,
         WM8983_POBCTRL_MASK |
         WM8983_DELEN_MASK, 0);
  }


  snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
        WM8983_VMIDSEL_MASK,
        2 << WM8983_VMIDSEL_SHIFT);
  break;
 case 131:

  snd_soc_component_update_bits(component, WM8983_OUTPUT_CTRL,
        WM8983_TSDEN_MASK, 0);

  snd_soc_component_update_bits(component, WM8983_POWER_MANAGEMENT_1,
        WM8983_VMIDSEL_MASK | WM8983_BIASEN_MASK,
        0);

  msleep(100);
  snd_soc_component_write(component, WM8983_POWER_MANAGEMENT_1, 0);
  snd_soc_component_write(component, WM8983_POWER_MANAGEMENT_2, 0);
  snd_soc_component_write(component, WM8983_POWER_MANAGEMENT_3, 0);
  break;
 }

 return 0;
}
