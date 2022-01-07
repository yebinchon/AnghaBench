
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct pll_ctl {TYPE_1__* settings; } ;
struct TYPE_2__ {int val; int mask; int addr; } ;


 int EINVAL ;
 int PLL_REG_SETTINGS_COUNT ;
 int dev_err (int ,char*,int const,...) ;
 struct pll_ctl* get_pll_ctl (int const) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int set_pll_ctl_from_input_freq(struct snd_soc_component *component,
  const int input_freq)
{
 int ret;
 int i;
 const struct pll_ctl *pll_ctl;

 pll_ctl = get_pll_ctl(input_freq);
 if (!pll_ctl) {
  ret = -EINVAL;
  dev_err(component->dev, "No PLL input entry for %d (%d)\n",
   input_freq, ret);
  return ret;
 }

 for (i = 0; i < PLL_REG_SETTINGS_COUNT; ++i) {
  ret = snd_soc_component_update_bits(component,
   pll_ctl->settings[i].addr,
   pll_ctl->settings[i].mask,
   pll_ctl->settings[i].val);
  if (ret < 0) {
   dev_err(component->dev, "Failed to set pll ctl (%d)\n",
    ret);
   return ret;
  }
 }

 return 0;
}
