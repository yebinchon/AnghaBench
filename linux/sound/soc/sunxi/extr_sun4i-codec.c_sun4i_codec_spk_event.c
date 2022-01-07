
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_codec {int gpio_pa; } ;
struct snd_soc_dapm_widget {TYPE_1__* dapm; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int card; } ;


 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 struct sun4i_codec* snd_soc_card_get_drvdata (int ) ;

__attribute__((used)) static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *k, int event)
{
 struct sun4i_codec *scodec = snd_soc_card_get_drvdata(w->dapm->card);

 gpiod_set_value_cansleep(scodec->gpio_pa,
     !!SND_SOC_DAPM_EVENT_ON(event));

 if (SND_SOC_DAPM_EVENT_ON(event)) {





  msleep(700);
 }

 return 0;
}
