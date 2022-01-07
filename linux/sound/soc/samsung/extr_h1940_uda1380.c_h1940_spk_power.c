
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ S3C_GPIO_END ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value (scalar_t__,int) ;

__attribute__((used)) static int h1940_spk_power(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 if (SND_SOC_DAPM_EVENT_ON(event))
  gpio_set_value(S3C_GPIO_END + 9, 1);
 else
  gpio_set_value(S3C_GPIO_END + 9, 0);

 return 0;
}
