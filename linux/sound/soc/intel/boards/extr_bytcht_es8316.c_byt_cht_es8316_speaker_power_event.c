
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct byt_cht_es8316_private {int speaker_en; int speaker_en_gpio; } ;
struct TYPE_2__ {struct snd_soc_card* card; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct byt_cht_es8316_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int byt_cht_es8316_speaker_power_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_card *card = w->dapm->card;
 struct byt_cht_es8316_private *priv = snd_soc_card_get_drvdata(card);

 if (SND_SOC_DAPM_EVENT_ON(event))
  priv->speaker_en = 1;
 else
  priv->speaker_en = 0;

 gpiod_set_value_cansleep(priv->speaker_en_gpio, priv->speaker_en);

 return 0;
}
