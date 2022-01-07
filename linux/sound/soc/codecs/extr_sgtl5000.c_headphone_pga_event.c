
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int HP_POWER_EVENT ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int vag_and_mute_control (struct snd_soc_component*,int,int ) ;

__attribute__((used)) static int headphone_pga_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 return vag_and_mute_control(component, event, HP_POWER_EVENT);
}
