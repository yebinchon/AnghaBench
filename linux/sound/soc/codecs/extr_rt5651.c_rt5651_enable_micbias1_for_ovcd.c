
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 int snd_soc_dapm_force_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void rt5651_enable_micbias1_for_ovcd(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 snd_soc_dapm_mutex_lock(dapm);
 snd_soc_dapm_force_enable_pin_unlocked(dapm, "LDO");
 snd_soc_dapm_force_enable_pin_unlocked(dapm, "micbias1");

 snd_soc_dapm_force_enable_pin_unlocked(dapm, "Platform Clock");
 snd_soc_dapm_sync_unlocked(dapm);
 snd_soc_dapm_mutex_unlock(dapm);
}
