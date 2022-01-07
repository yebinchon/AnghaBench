
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8510_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8510_POWER1 ;
 int WM8510_POWER1_BIASEN ;
 int WM8510_POWER1_BUFIOEN ;
 int WM8510_POWER2 ;
 int WM8510_POWER3 ;
 int mdelay (int) ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8510_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8510_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct wm8510_priv *wm8510 = snd_soc_component_get_drvdata(component);
 u16 power1 = snd_soc_component_read32(component, WM8510_POWER1) & ~0x3;

 switch (level) {
 case 130:
 case 129:
  power1 |= 0x1;
  snd_soc_component_write(component, WM8510_POWER1, power1);
  break;

 case 128:
  power1 |= WM8510_POWER1_BIASEN | WM8510_POWER1_BUFIOEN;

  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_sync(wm8510->regmap);


   snd_soc_component_write(component, WM8510_POWER1, power1 | 0x3);
   mdelay(100);
  }

  power1 |= 0x2;
  snd_soc_component_write(component, WM8510_POWER1, power1);
  break;

 case 131:
  snd_soc_component_write(component, WM8510_POWER1, 0);
  snd_soc_component_write(component, WM8510_POWER2, 0);
  snd_soc_component_write(component, WM8510_POWER3, 0);
  break;
 }

 return 0;
}
