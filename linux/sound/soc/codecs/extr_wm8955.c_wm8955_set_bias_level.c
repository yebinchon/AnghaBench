
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8955_priv {int supplies; int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (int ) ;




 int WM8955_ADDITIONAL_CONTROL_1 ;
 int WM8955_ADDITIONAL_CONTROL_3 ;
 int WM8955_POWER_MANAGEMENT_1 ;
 int WM8955_VMIDSEL_MASK ;
 int WM8955_VMIDSEL_SHIFT ;
 int WM8955_VREF ;
 int WM8955_VREF_SHIFT ;
 int WM8955_VROI ;
 int WM8955_VSEL_MASK ;
 int WM8955_VSEL_SHIFT ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_sync (int ) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8955_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8955_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8955_priv *wm8955 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_update_bits(component, WM8955_POWER_MANAGEMENT_1,
        WM8955_VMIDSEL_MASK,
        0x1 << WM8955_VMIDSEL_SHIFT);


  snd_soc_component_update_bits(component, WM8955_ADDITIONAL_CONTROL_1,
        WM8955_VSEL_MASK,
        0x2 << WM8955_VSEL_SHIFT);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regulator_bulk_enable(ARRAY_SIZE(wm8955->supplies),
          wm8955->supplies);
   if (ret != 0) {
    dev_err(component->dev,
     "Failed to enable supplies: %d\n",
     ret);
    return ret;
   }

   regcache_sync(wm8955->regmap);


   snd_soc_component_update_bits(component, WM8955_POWER_MANAGEMENT_1,
         WM8955_VREF |
         WM8955_VMIDSEL_MASK,
         WM8955_VREF |
         0x3 << WM8955_VREF_SHIFT);


   msleep(500);


   snd_soc_component_update_bits(component,
         WM8955_ADDITIONAL_CONTROL_3,
         WM8955_VROI, WM8955_VROI);
  }


  snd_soc_component_update_bits(component, WM8955_POWER_MANAGEMENT_1,
        WM8955_VMIDSEL_MASK,
        0x2 << WM8955_VMIDSEL_SHIFT);


  snd_soc_component_update_bits(component, WM8955_ADDITIONAL_CONTROL_1,
        WM8955_VSEL_MASK, 0);
  break;

 case 131:

  snd_soc_component_update_bits(component,
        WM8955_ADDITIONAL_CONTROL_3,
        WM8955_VROI, 0);


  snd_soc_component_update_bits(component, WM8955_POWER_MANAGEMENT_1,
        WM8955_VREF |
        WM8955_VMIDSEL_MASK, 0);

  regulator_bulk_disable(ARRAY_SIZE(wm8955->supplies),
           wm8955->supplies);
  break;
 }
 return 0;
}
