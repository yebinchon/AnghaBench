
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {int dummy; } ;
struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 unsigned int FM_PLLCTL_PLL1CLKEN ;
 unsigned int FM_PLLCTL_PLL2CLKEN ;
 unsigned int FV_PLL1CLKEN_DISABLE ;
 unsigned int FV_PLL1CLKEN_ENABLE ;
 unsigned int FV_PLL2CLKEN_DISABLE ;
 unsigned int FV_PLL2CLKEN_ENABLE ;
 int R_PLLCTL ;
 int SND_SOC_DAPM_POST_PMU ;
 int coeff_ram_sync (struct snd_soc_component*,struct tscs454*) ;
 int dev_err (int ,char*,...) ;
 int msleep (int) ;
 struct tscs454* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int pll_power_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);
 struct tscs454 *tscs454 = snd_soc_component_get_drvdata(component);
 bool enable;
 bool pll1;
 unsigned int msk;
 unsigned int val;
 int ret;

 if (strstr(w->name, "PLL 1"))
  pll1 = 1;
 else
  pll1 = 0;

 msk = pll1 ? FM_PLLCTL_PLL1CLKEN : FM_PLLCTL_PLL2CLKEN;

 if (event == SND_SOC_DAPM_POST_PMU)
  enable = 1;
 else
  enable = 0;

 if (enable)
  val = pll1 ? FV_PLL1CLKEN_ENABLE : FV_PLL2CLKEN_ENABLE;
 else
  val = pll1 ? FV_PLL1CLKEN_DISABLE : FV_PLL2CLKEN_DISABLE;

 ret = snd_soc_component_update_bits(component, R_PLLCTL, msk, val);
 if (ret < 0) {
  dev_err(component->dev, "Failed to %s PLL %d  (%d)\n",
    enable ? "enable" : "disable",
    pll1 ? 1 : 2,
    ret);
  return ret;
 }

 if (enable) {
  msleep(20);
  ret = coeff_ram_sync(component, tscs454);
  if (ret < 0) {
   dev_err(component->dev,
     "Failed to sync coeff ram (%d)\n", ret);
   return ret;
  }
 }

 return 0;
}
