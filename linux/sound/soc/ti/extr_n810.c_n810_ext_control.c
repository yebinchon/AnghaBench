
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;





 scalar_t__ n810_dmic_func ;
 int n810_jack_func ;
 scalar_t__ n810_spk_func ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void n810_ext_control(struct snd_soc_dapm_context *dapm)
{
 int hp = 0, line1l = 0;

 switch (n810_jack_func) {
 case 129:
  line1l = 1;

 case 130:
  hp = 1;
  break;
 case 128:
  line1l = 1;
  break;
 }

 snd_soc_dapm_mutex_lock(dapm);

 if (n810_spk_func)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Ext Spk");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Ext Spk");

 if (hp)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
 if (line1l)
  snd_soc_dapm_enable_pin_unlocked(dapm, "HS Mic");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "HS Mic");

 if (n810_dmic_func)
  snd_soc_dapm_enable_pin_unlocked(dapm, "DMic");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "DMic");

 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
