
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int spitz_mic_gpio ;

__attribute__((used)) static int spitz_mic_bias(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 gpio_set_value_cansleep(spitz_mic_gpio, SND_SOC_DAPM_EVENT_ON(event));
 return 0;
}
