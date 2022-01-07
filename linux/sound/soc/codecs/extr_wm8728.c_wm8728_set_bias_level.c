
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm8728_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;






 int WM8728_DACCTL ;
 int regcache_sync (int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct wm8728_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8728_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct wm8728_priv *wm8728 = snd_soc_component_get_drvdata(component);
 u16 reg;

 switch (level) {
 case 130:
 case 129:
 case 128:
  if (snd_soc_component_get_bias_level(component) == 131) {

   reg = snd_soc_component_read32(component, WM8728_DACCTL);
   snd_soc_component_write(component, WM8728_DACCTL, reg & ~0x4);


   regcache_sync(wm8728->regmap);
  }
  break;

 case 131:
  reg = snd_soc_component_read32(component, WM8728_DACCTL);
  snd_soc_component_write(component, WM8728_DACCTL, reg | 0x4);
  break;
 }
 return 0;
}
