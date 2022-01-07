
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct byt_rt5651_private {int ext_amp_gpio; } ;
struct TYPE_2__ {struct snd_soc_card* card; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct byt_rt5651_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;

__attribute__((used)) static int rt5651_ext_amp_power_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_card *card = w->dapm->card;
 struct byt_rt5651_private *priv = snd_soc_card_get_drvdata(card);

 if (SND_SOC_DAPM_EVENT_ON(event))
  gpiod_set_value_cansleep(priv->ext_amp_gpio, 1);
 else
  gpiod_set_value_cansleep(priv->ext_amp_gpio, 0);

 return 0;
}
