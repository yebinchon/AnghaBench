
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rx51_audio_pdata {int speaker_amp_gpio; } ;


 int SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_raw_value_cansleep (int ,int) ;
 struct rx51_audio_pdata* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int rx51_spk_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct rx51_audio_pdata *pdata = snd_soc_card_get_drvdata(card);

 gpiod_set_raw_value_cansleep(pdata->speaker_amp_gpio,
         !!SND_SOC_DAPM_EVENT_ON(event));

 return 0;
}
