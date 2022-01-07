
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8900_priv {int fll_out; int fll_in; int regmap; } ;
struct snd_soc_component {int dev; } ;


 int SND_SOC_BIAS_STANDBY ;
 int dev_err (int ,char*,...) ;
 int regcache_sync (int ) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct wm8900_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8900_reset (struct snd_soc_component*) ;
 int wm8900_set_fll (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8900_resume(struct snd_soc_component *component)
{
 struct wm8900_priv *wm8900 = snd_soc_component_get_drvdata(component);
 int ret;

 wm8900_reset(component);

 ret = regcache_sync(wm8900->regmap);
 if (ret != 0) {
  dev_err(component->dev, "Failed to restore cache: %d\n", ret);
  return ret;
 }

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_STANDBY);


 if (wm8900->fll_out) {
  int fll_out = wm8900->fll_out;
  int fll_in = wm8900->fll_in;

  wm8900->fll_in = 0;
  wm8900->fll_out = 0;

  ret = wm8900_set_fll(component, 0, fll_in, fll_out);
  if (ret != 0) {
   dev_err(component->dev, "Failed to restart FLL\n");
   return ret;
  }
 }

 return 0;
}
