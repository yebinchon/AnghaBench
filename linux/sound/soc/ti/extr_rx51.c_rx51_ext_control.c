
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct rx51_audio_pdata {int tvout_selection_gpio; } ;





 int gpiod_set_value (int ,int) ;
 scalar_t__ rx51_dmic_func ;
 int rx51_jack_func ;
 scalar_t__ rx51_spk_func ;
 struct rx51_audio_pdata* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dapm_disable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_enable_pin_unlocked (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_mutex_lock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_mutex_unlock (struct snd_soc_dapm_context*) ;
 int snd_soc_dapm_sync_unlocked (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void rx51_ext_control(struct snd_soc_dapm_context *dapm)
{
 struct snd_soc_card *card = dapm->card;
 struct rx51_audio_pdata *pdata = snd_soc_card_get_drvdata(card);
 int hp = 0, hs = 0, tvout = 0;

 switch (rx51_jack_func) {
 case 128:
  tvout = 1;
  hp = 1;
  break;
 case 129:
  hs = 1;

 case 130:
  hp = 1;
  break;
 }

 snd_soc_dapm_mutex_lock(dapm);

 if (rx51_spk_func)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Ext Spk");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Ext Spk");
 if (rx51_dmic_func)
  snd_soc_dapm_enable_pin_unlocked(dapm, "DMic");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "DMic");
 if (hp)
  snd_soc_dapm_enable_pin_unlocked(dapm, "Headphone Jack");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "Headphone Jack");
 if (hs)
  snd_soc_dapm_enable_pin_unlocked(dapm, "HS Mic");
 else
  snd_soc_dapm_disable_pin_unlocked(dapm, "HS Mic");

 gpiod_set_value(pdata->tvout_selection_gpio, tvout);

 snd_soc_dapm_sync_unlocked(dapm);

 snd_soc_dapm_mutex_unlock(dapm);
}
