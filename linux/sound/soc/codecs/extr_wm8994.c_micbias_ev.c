
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int late_enable_ev (struct snd_soc_dapm_widget*,struct snd_kcontrol*,int) ;

__attribute__((used)) static int micbias_ev(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 late_enable_ev(w, kcontrol, event);
 return 0;
}
