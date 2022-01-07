
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct sirf_audio_card {int gpio_spk_pa; } ;


 int SND_SOC_DAPM_EVENT_OFF (int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 struct sirf_audio_card* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int sirf_audio_spk_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *ctrl, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct sirf_audio_card *sirf_audio_card = snd_soc_card_get_drvdata(card);
 int on = !SND_SOC_DAPM_EVENT_OFF(event);

 if (gpio_is_valid(sirf_audio_card->gpio_spk_pa))
  gpio_set_value(sirf_audio_card->gpio_spk_pa, on);

 return 0;
}
