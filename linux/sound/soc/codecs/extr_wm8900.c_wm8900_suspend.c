
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8900_priv {int fll_out; int fll_in; } ;
struct snd_soc_component {int dev; } ;


 int SND_SOC_BIAS_OFF ;
 int dev_err (int ,char*) ;
 int snd_soc_component_force_bias_level (struct snd_soc_component*,int ) ;
 struct wm8900_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8900_set_fll (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int wm8900_suspend(struct snd_soc_component *component)
{
 struct wm8900_priv *wm8900 = snd_soc_component_get_drvdata(component);
 int fll_out = wm8900->fll_out;
 int fll_in = wm8900->fll_in;
 int ret;


 ret = wm8900_set_fll(component, 0, 0, 0);
 if (ret != 0) {
  dev_err(component->dev, "Failed to stop FLL\n");
  return ret;
 }

 wm8900->fll_out = fll_out;
 wm8900->fll_in = fll_in;

 snd_soc_component_force_bias_level(component, SND_SOC_BIAS_OFF);

 return 0;
}
