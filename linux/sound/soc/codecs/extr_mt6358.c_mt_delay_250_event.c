
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int usleep_range (int,int) ;

__attribute__((used)) static int mt_delay_250_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol,
         int event)
{
 switch (event) {
 case 129:
  usleep_range(250, 270);
  break;
 case 128:
  usleep_range(250, 270);
  break;
 default:
  break;
 }

 return 0;
}
