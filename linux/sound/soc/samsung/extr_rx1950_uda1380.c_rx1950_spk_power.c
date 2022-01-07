
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int S3C2410_GPA (int) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int rx1950_spk_power(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 if (SND_SOC_DAPM_EVENT_ON(event))
  gpio_set_value(S3C2410_GPA(1), 1);
 else
  gpio_set_value(S3C2410_GPA(1), 0);

 return 0;
}
