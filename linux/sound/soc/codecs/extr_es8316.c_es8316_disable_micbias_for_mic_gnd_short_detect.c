
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void es8316_disable_micbias_for_mic_gnd_short_detect(
 struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 snd_soc_dapm_mutex_lock(dapm);
 snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Bias");
 snd_soc_dapm_disable_pin_unlocked(dapm, "Analog power");
 snd_soc_dapm_disable_pin_unlocked(dapm, "Bias");
 snd_soc_dapm_sync_unlocked(dapm);
 snd_soc_dapm_mutex_unlock(dapm);
}
