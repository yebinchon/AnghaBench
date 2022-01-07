
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;





 scalar_t__ TOSA_SPK_ON ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;
 int tosa_jack_func ;
 scalar_t__ tosa_spk_func ;

__attribute__((used)) static void tosa_ext_control(struct snd_soc_dapm_context *dapm)
{

 snd_soc_dapm_mutex_lock(dapm);


 switch (tosa_jack_func) {
 case 129:
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic (Internal)");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  break;
 case 128:
  snd_soc_dapm_enable_pin_unlocked(dapm, "Mic (Internal)");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  break;
 case 130:
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic (Internal)");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headset Jack");
  break;
 }

 if (tosa_spk_func == TOSA_SPK_ON)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Speaker");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Speaker");

 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
