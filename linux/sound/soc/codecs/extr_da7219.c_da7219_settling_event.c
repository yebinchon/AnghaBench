
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int DA7219_SETTLING_DELAY ;


 int msleep (int ) ;

__attribute__((used)) static int da7219_settling_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 switch (event) {
 case 128:
 case 129:
  msleep(DA7219_SETTLING_DELAY);
  break;
 default:
  break;
 }

 return 0;
}
