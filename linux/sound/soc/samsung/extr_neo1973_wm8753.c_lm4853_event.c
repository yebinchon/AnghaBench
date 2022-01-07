
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int S3C2410_GPJ (int) ;
 int SND_SOC_DAPM_EVENT_OFF (int) ;
 int gpio_set_value (int ,int ) ;

__attribute__((used)) static int lm4853_event(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *k, int event)
{
 gpio_set_value(S3C2410_GPJ(1), SND_SOC_DAPM_EVENT_OFF(event));

 return 0;
}
