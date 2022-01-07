
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9713_priv {scalar_t__ pll_in; int ac97; } ;
struct snd_soc_component {int regmap; } ;


 int SND_SOC_BIAS_STANDBY ;
 int WM9713_VENDOR_ID ;
 int WM9713_VENDOR_ID_MASK ;
 int regcache_mark_dirty (int ) ;
 int snd_ac97_reset (int ,int,int ,int ) ;
 int snd_soc_component_cache_sync (struct snd_soc_component*) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct wm9713_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm9713_set_pll (struct snd_soc_component*,int ,scalar_t__,int ) ;

__attribute__((used)) static int wm9713_soc_resume(struct snd_soc_component *component)
{
 struct wm9713_priv *wm9713 = snd_soc_component_get_drvdata(component);
 int ret;

 ret = snd_ac97_reset(wm9713->ac97, 1, WM9713_VENDOR_ID,
  WM9713_VENDOR_ID_MASK);
 if (ret < 0)
  return ret;

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);


 if (wm9713->pll_in)
  wm9713_set_pll(component, 0, wm9713->pll_in, 0);


 if (ret == 0) {
  regcache_mark_dirty(component->regmap);
  snd_soc_component_cache_sync(component);
 }

 return ret;
}
