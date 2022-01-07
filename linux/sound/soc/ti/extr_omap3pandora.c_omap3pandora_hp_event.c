
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int OMAP3_PANDORA_AMP_POWER_GPIO ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int omap3pandora_hp_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 if (SND_SOC_DAPM_EVENT_ON(event))
  gpio_set_value(OMAP3_PANDORA_AMP_POWER_GPIO, 1);
 else
  gpio_set_value(OMAP3_PANDORA_AMP_POWER_GPIO, 0);

 return 0;
}
