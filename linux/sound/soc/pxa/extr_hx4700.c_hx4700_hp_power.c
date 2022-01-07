
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int GPIO92_HX4700_HP_DRIVER ;
 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int hx4700_hp_power(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *k, int event)
{
 gpio_set_value(GPIO92_HX4700_HP_DRIVER, !!SND_SOC_DAPM_EVENT_ON(event));
 return 0;
}
