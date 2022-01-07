
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8978_priv {int regmap; } ;
struct snd_soc_component {int dummy; } ;


 int SND_SOC_BIAS_OFF ;
 int WM8978_POWER_MANAGEMENT_1 ;
 int regcache_mark_dirty (int ) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct wm8978_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int wm8978_suspend(struct snd_soc_component *component)
{
 struct wm8978_priv *wm8978 = snd_soc_component_get_drvdata(component);

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);

 snd_soc_component_write(component, WM8978_POWER_MANAGEMENT_1, 0);

 regcache_mark_dirty(wm8978->regmap);

 return 0;
}
