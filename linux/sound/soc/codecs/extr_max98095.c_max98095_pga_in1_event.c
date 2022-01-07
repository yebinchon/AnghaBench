
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int max98095_line_pga (struct snd_soc_dapm_widget*,int,int) ;

__attribute__((used)) static int max98095_pga_in1_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *k, int event)
{
 return max98095_line_pga(w, event, 1);
}
