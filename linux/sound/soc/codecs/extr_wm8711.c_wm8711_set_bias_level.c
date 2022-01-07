
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8711_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8711_ACTIVE ;
 int WM8711_PWR ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8711_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8711_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct wm8711_priv *wm8711 = snd_soc_component_get_drvdata(component);
 u16 reg = snd_soc_component_read32(component, WM8711_PWR) & 0xff7f;

 switch (level) {
 case 130:
  snd_soc_component_write(component, WM8711_PWR, reg);
  break;
 case 129:
  break;
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131)
   regcache_sync(wm8711->regmap);

  snd_soc_component_write(component, WM8711_PWR, reg | 0x0040);
  break;
 case 131:
  snd_soc_component_write(component, WM8711_ACTIVE, 0x0);
  snd_soc_component_write(component, WM8711_PWR, 0xffff);
  break;
 }
 return 0;
}
