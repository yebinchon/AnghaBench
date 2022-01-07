
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5645_priv {int hp_on; } ;



 int msleep (int) ;
 struct rt5645_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5650_hp_event(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *k, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5645_priv *rt5645 = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 128:
  if (rt5645->hp_on) {
   msleep(100);
   rt5645->hp_on = 0;
  }
  break;

 default:
  return 0;
 }

 return 0;
}
