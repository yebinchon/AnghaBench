
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;



 int msleep (int) ;

__attribute__((used)) static int adc_enable_delay_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kcontrol, int event)
{
 switch (event) {
 case 128:
  msleep(200);
  break;
 default:
  break;
 }

 return 0;
}
