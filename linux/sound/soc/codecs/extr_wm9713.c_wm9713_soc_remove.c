
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9713_priv {int ac97; int mfd_pdata; } ;
struct snd_soc_component {int dummy; } ;


 int CONFIG_SND_SOC_AC97_BUS ;
 scalar_t__ IS_ENABLED (int ) ;
 int snd_soc_component_exit_regmap (struct snd_soc_component*) ;
 struct wm9713_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_free_ac97_component (int ) ;

__attribute__((used)) static void wm9713_soc_remove(struct snd_soc_component *component)
{
 struct wm9713_priv *wm9713 = snd_soc_component_get_drvdata(component);

 if (IS_ENABLED(CONFIG_SND_SOC_AC97_BUS) && !wm9713->mfd_pdata) {
  snd_soc_component_exit_regmap(component);
  snd_soc_free_ac97_component(wm9713->ac97);
 }
}
