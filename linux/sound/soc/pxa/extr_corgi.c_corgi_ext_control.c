
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;


 int CORGI_GPIO_MUTE_L ;
 int CORGI_GPIO_MUTE_R ;




 scalar_t__ CORGI_SPK_ON ;
 int corgi_jack_func ;
 scalar_t__ corgi_spk_func ;
 int gpio_set_value (int ,int) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void corgi_ext_control(struct snd_soc_dapm_context *dapm)
{
 snd_soc_dapm_mutex_lock(dapm);


 switch (corgi_jack_func) {
 case 130:

  gpio_set_value(CORGI_GPIO_MUTE_L, 1);
  gpio_set_value(CORGI_GPIO_MUTE_R, 1);
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  break;
 case 128:

  gpio_set_value(CORGI_GPIO_MUTE_L, 0);
  gpio_set_value(CORGI_GPIO_MUTE_R, 0);
  snd_soc_dapm_enable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  break;
 case 129:
  gpio_set_value(CORGI_GPIO_MUTE_L, 0);
  gpio_set_value(CORGI_GPIO_MUTE_R, 0);
  snd_soc_dapm_disable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headset Jack");
  break;
 case 131:
  gpio_set_value(CORGI_GPIO_MUTE_L, 0);
  gpio_set_value(CORGI_GPIO_MUTE_R, 1);
  snd_soc_dapm_enable_pin_unlocked(dapm, "Mic Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Line Jack");
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headset Jack");
  break;
 }

 if (corgi_spk_func == CORGI_SPK_ON)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Ext Spk");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Ext Spk");


 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
