
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8991_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8991_ANTIPOP1 ;
 int WM8991_ANTIPOP2 ;
 int WM8991_BUFDCOPEN ;
 int WM8991_BUFIOEN ;
 int WM8991_DAC_CTRL ;
 int WM8991_DAC_MUTE ;
 int WM8991_DIS_LLINE ;
 int WM8991_DIS_LOUT ;
 int WM8991_DIS_OUT3 ;
 int WM8991_DIS_OUT4 ;
 int WM8991_DIS_RLINE ;
 int WM8991_DIS_ROUT ;
 int WM8991_POBCTRL ;
 int WM8991_POWER_MANAGEMENT_1 ;
 int WM8991_SOFTST ;
 int WM8991_VMIDTOG ;
 int WM8991_VMID_MODE_MASK ;
 int msleep (int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8991_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8991_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8991_priv *wm8991 = snd_soc_component_get_drvdata(component);
 u16 val;

 switch (level) {
 case 130:
  break;

 case 129:

  val = snd_soc_component_read32(component, WM8991_POWER_MANAGEMENT_1) &
        ~WM8991_VMID_MODE_MASK;
  snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, val | 0x2);
  break;

 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_sync(wm8991->regmap);

   snd_soc_component_write(component, WM8991_ANTIPOP1, WM8991_DIS_LLINE |
          WM8991_DIS_RLINE | WM8991_DIS_OUT3 |
          WM8991_DIS_OUT4 | WM8991_DIS_LOUT |
          WM8991_DIS_ROUT);


   snd_soc_component_write(component, WM8991_ANTIPOP2, WM8991_SOFTST |
          WM8991_BUFDCOPEN | WM8991_POBCTRL |
          WM8991_VMIDTOG);


   msleep(300);


   snd_soc_component_write(component, WM8991_ANTIPOP2, WM8991_SOFTST |
          WM8991_BUFDCOPEN | WM8991_POBCTRL);


   snd_soc_component_write(component, WM8991_ANTIPOP1, 0);


   snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x1b00);

   msleep(50);


   snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x1f02);

   msleep(100);


   snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x1f03);

   msleep(600);


   snd_soc_component_write(component, WM8991_ANTIPOP2, WM8991_SOFTST |
          WM8991_BUFDCOPEN | WM8991_POBCTRL |
          WM8991_BUFIOEN);


   snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x3);


   snd_soc_component_write(component, WM8991_ANTIPOP2, WM8991_BUFIOEN);
  }


  val = snd_soc_component_read32(component, WM8991_POWER_MANAGEMENT_1) &
        ~WM8991_VMID_MODE_MASK;
  snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, val | 0x4);
  break;

 case 131:

  snd_soc_component_write(component, WM8991_ANTIPOP2, WM8991_SOFTST |
         WM8991_POBCTRL | WM8991_BUFIOEN);


  snd_soc_component_write(component, WM8991_ANTIPOP2, WM8991_SOFTST |
         WM8991_BUFDCOPEN | WM8991_POBCTRL |
         WM8991_BUFIOEN);


  val = snd_soc_component_read32(component, WM8991_DAC_CTRL);
  snd_soc_component_write(component, WM8991_DAC_CTRL, val | WM8991_DAC_MUTE);


  snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x1f03);


  snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x1f01);

  msleep(300);


  snd_soc_component_write(component, WM8991_ANTIPOP1, WM8991_DIS_LLINE |
         WM8991_DIS_RLINE | WM8991_DIS_OUT3 |
         WM8991_DIS_OUT4 | WM8991_DIS_LOUT |
         WM8991_DIS_ROUT);


  snd_soc_component_write(component, WM8991_POWER_MANAGEMENT_1, 0x0);


  snd_soc_component_write(component, WM8991_ANTIPOP2, 0x0);
  regcache_mark_dirty(wm8991->regmap);
  break;
 }

 return 0;
}
