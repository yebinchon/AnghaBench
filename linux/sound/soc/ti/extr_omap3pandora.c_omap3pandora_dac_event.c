
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int OMAP3_PANDORA_DAC_POWER_GPIO ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int dev_err (int ,char*,int) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int omap3pandora_dac_reg ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int omap3pandora_dac_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 int ret;





 if (SND_SOC_DAPM_EVENT_ON(event)) {
  ret = regulator_enable(omap3pandora_dac_reg);
  if (ret) {
   dev_err(w->dapm->dev, "Failed to power DAC: %d\n", ret);
   return ret;
  }
  mdelay(1);
  gpio_set_value(OMAP3_PANDORA_DAC_POWER_GPIO, 1);
 } else {
  gpio_set_value(OMAP3_PANDORA_DAC_POWER_GPIO, 0);
  mdelay(1);
  regulator_disable(omap3pandora_dac_reg);
 }

 return 0;
}
