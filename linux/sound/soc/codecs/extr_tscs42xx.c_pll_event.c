
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int power_down_audio_plls (struct snd_soc_component*) ;
 int power_up_audio_plls (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int pll_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);
 int ret;

 if (SND_SOC_DAPM_EVENT_ON(event))
  ret = power_up_audio_plls(component);
 else
  ret = power_down_audio_plls(component);

 return ret;
}
