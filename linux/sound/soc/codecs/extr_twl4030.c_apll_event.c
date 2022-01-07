
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int twl4030_apll_enable (struct snd_soc_component*,int) ;

__attribute__((used)) static int apll_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  twl4030_apll_enable(component, 1);
  break;
 case 129:
  twl4030_apll_enable(component, 0);
  break;
 }
 return 0;
}
