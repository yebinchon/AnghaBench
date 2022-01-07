
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;






 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wm8958_dsp_apply (struct snd_soc_component*,int,int) ;

int wm8958_aif_ev(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 int i;

 switch (event) {
 case 130:
 case 128:
  for (i = 0; i < 3; i++)
   wm8958_dsp_apply(component, i, 1);
  break;
 case 131:
 case 129:
  for (i = 0; i < 3; i++)
   wm8958_dsp_apply(component, i, 0);
  break;
 }

 return 0;
}
