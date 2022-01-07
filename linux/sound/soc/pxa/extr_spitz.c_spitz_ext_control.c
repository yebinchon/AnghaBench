
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;


 int SPITZ_GPIO_MUTE_L ;
 int SPITZ_GPIO_MUTE_R ;





 scalar_t__ SPITZ_SPK_ON ;
 int gpio_set_value (int ,int) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;
 int spitz_jack_func ;
 scalar_t__ spitz_spk_func ;

__attribute__((used)) static void spitz_ext_control(struct snd_soc_dapm_context *dapm)
{
 snd_soc_dapm_mutex_lock(dapm);

 if (spitz_spk_func == SPITZ_SPK_ON)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Ext Spk");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Ext Spk");


 switch (spitz_jack_func) {
 case 131:

  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 1);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 1);
  break;
 case 128:

  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Mic Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
  break;
 case 129:

  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Line Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
  break;
 case 132:

  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headset Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 1);
  break;
 case 130:


  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  gpio_set_value(SPITZ_GPIO_MUTE_L, 0);
  gpio_set_value(SPITZ_GPIO_MUTE_R, 0);
  break;
 }

 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
