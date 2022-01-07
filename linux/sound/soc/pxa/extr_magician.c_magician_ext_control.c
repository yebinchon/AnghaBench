
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;




 scalar_t__ magician_hp_switch ;
 int magician_in_sel ;
 scalar_t__ magician_spk_switch ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void magician_ext_control(struct snd_soc_dapm_context *dapm)
{

 snd_soc_dapm_mutex_lock(dapm);

 if (magician_spk_switch)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Speaker");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Speaker");
 if (magician_hp_switch)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");

 switch (magician_in_sel) {
 case 129:
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Mic");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Call Mic");
  break;
 case 128:
  snd_soc_dapm_disable_pin_unlocked(dapm, "Call Mic");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headset Mic");
  break;
 }

 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
