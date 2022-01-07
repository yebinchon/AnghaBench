
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct max98090_priv {int shdn_pending; } ;


 int SND_SOC_DAPM_POST_PMU ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int max98090_shdn_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);

 if (event & SND_SOC_DAPM_POST_PMU)
  max98090->shdn_pending = 1;

 return 0;

}
