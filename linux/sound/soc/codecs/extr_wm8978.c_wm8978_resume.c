
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8978_priv {scalar_t__ f_pllout; int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int SND_SOC_BIAS_STANDBY ;
 int WM8978_POWER_MANAGEMENT_1 ;
 int regcache_sync (int ) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct wm8978_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8978_resume(struct snd_soc_component *component)
{
 struct wm8978_priv *wm8978 = snd_soc_component_get_drvdata(component);


 regcache_sync(wm8978->regmap);

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);

 if (wm8978->f_pllout)

  snd_soc_component_update_bits(component, WM8978_POWER_MANAGEMENT_1, 0x20, 0x20);

 return 0;
}
