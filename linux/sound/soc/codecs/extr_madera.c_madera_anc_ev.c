
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int MADERA_CLOCK_CONTROL ;


 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

int madera_anc_ev(struct snd_soc_dapm_widget *w, struct snd_kcontrol *kcontrol,
    int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int val;

 switch (event) {
 case 129:
  val = 1 << w->shift;
  break;
 case 128:
  val = 1 << (w->shift + 1);
  break;
 default:
  return 0;
 }

 snd_soc_component_write(component, MADERA_CLOCK_CONTROL, val);

 return 0;
}
