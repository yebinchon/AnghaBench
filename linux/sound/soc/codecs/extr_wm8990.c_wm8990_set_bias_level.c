
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8990_priv {int regmap; } ;
struct snd_soc_component {int dev; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8990_ANTIPOP1 ;
 int WM8990_ANTIPOP2 ;
 int WM8990_BUFDCOPEN ;
 int WM8990_BUFIOEN ;
 int WM8990_DAC_CTRL ;
 int WM8990_DAC_MUTE ;
 int WM8990_DIS_LLINE ;
 int WM8990_DIS_LOUT ;
 int WM8990_DIS_OUT3 ;
 int WM8990_DIS_OUT4 ;
 int WM8990_DIS_RLINE ;
 int WM8990_DIS_ROUT ;
 int WM8990_EXT_ACCESS_ENA ;
 int WM8990_EXT_CTL1 ;
 int WM8990_POBCTRL ;
 int WM8990_POWER_MANAGEMENT_1 ;
 int WM8990_SOFTST ;
 int WM8990_VMIDTOG ;
 int WM8990_VMID_MODE_MASK ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8990_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8990_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct wm8990_priv *wm8990 = snd_soc_component_get_drvdata(component);
 int ret;

 switch (level) {
 case 130:
  break;

 case 129:

  snd_soc_component_update_bits(component, WM8990_POWER_MANAGEMENT_1,
        WM8990_VMID_MODE_MASK, 0x2);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   ret = regcache_sync(wm8990->regmap);
   if (ret < 0) {
    dev_err(component->dev, "Failed to sync cache: %d\n", ret);
    return ret;
   }


   snd_soc_component_write(component, WM8990_ANTIPOP1, WM8990_DIS_LLINE |
    WM8990_DIS_RLINE | WM8990_DIS_OUT3 |
    WM8990_DIS_OUT4 | WM8990_DIS_LOUT |
    WM8990_DIS_ROUT);


   snd_soc_component_write(component, WM8990_ANTIPOP2, WM8990_SOFTST |
         WM8990_BUFDCOPEN | WM8990_POBCTRL |
         WM8990_VMIDTOG);


   msleep(300);


   snd_soc_component_write(component, WM8990_ANTIPOP2, WM8990_SOFTST |
         WM8990_BUFDCOPEN | WM8990_POBCTRL);


   snd_soc_component_write(component, WM8990_ANTIPOP1, 0);


   snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x1b00);

   msleep(50);


   snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x1f02);

   msleep(100);


   snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x1f03);

   msleep(600);


   snd_soc_component_write(component, WM8990_ANTIPOP2, WM8990_SOFTST |
         WM8990_BUFDCOPEN | WM8990_POBCTRL |
         WM8990_BUFIOEN);


   snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x3);


   snd_soc_component_write(component, WM8990_ANTIPOP2, WM8990_BUFIOEN);


   snd_soc_component_write(component, WM8990_EXT_ACCESS_ENA, 0x2);
   snd_soc_component_write(component, WM8990_EXT_CTL1, 0xa003);
   snd_soc_component_write(component, WM8990_EXT_ACCESS_ENA, 0);
  }


  snd_soc_component_update_bits(component, WM8990_POWER_MANAGEMENT_1,
        WM8990_VMID_MODE_MASK, 0x4);
  break;

 case 131:

  snd_soc_component_write(component, WM8990_ANTIPOP2, WM8990_SOFTST |
   WM8990_POBCTRL | WM8990_BUFIOEN);


  snd_soc_component_write(component, WM8990_ANTIPOP2, WM8990_SOFTST |
   WM8990_BUFDCOPEN | WM8990_POBCTRL |
   WM8990_BUFIOEN);


  snd_soc_component_update_bits(component, WM8990_DAC_CTRL,
        WM8990_DAC_MUTE, WM8990_DAC_MUTE);


  snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x1f03);


  snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x1f01);

  msleep(300);


  snd_soc_component_write(component, WM8990_ANTIPOP1, WM8990_DIS_LLINE |
   WM8990_DIS_RLINE | WM8990_DIS_OUT3 |
   WM8990_DIS_OUT4 | WM8990_DIS_LOUT |
   WM8990_DIS_ROUT);


  snd_soc_component_write(component, WM8990_POWER_MANAGEMENT_1, 0x0);


  snd_soc_component_write(component, WM8990_ANTIPOP2, 0x0);

  regcache_mark_dirty(wm8990->regmap);
  break;
 }

 return 0;
}
