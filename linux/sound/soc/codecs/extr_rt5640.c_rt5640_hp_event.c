
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5640_priv {int hp_mute; } ;




 int msleep (int) ;
 int rt5640_pmu_depop (struct snd_soc_component*) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5640_hp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:
  rt5640_pmu_depop(component);
  rt5640->hp_mute = 0;
  break;

 case 128:
  rt5640->hp_mute = 1;
  msleep(70);
  break;

 default:
  return 0;
 }

 return 0;
}
