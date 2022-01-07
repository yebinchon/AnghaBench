
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int cz_jack ;
 int dev_err (int ,char*,int) ;
 int rt5645_set_jack_detect (struct snd_soc_component*,int *,int *,int *) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,int *,int *,int ) ;

__attribute__((used)) static int cz_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;
 struct snd_soc_card *card;
 struct snd_soc_component *codec;

 codec = rtd->codec_dai->component;
 card = rtd->card;

 ret = snd_soc_card_jack_new(card, "Headset Jack",
    SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
    SND_JACK_BTN_0 | SND_JACK_BTN_1 |
    SND_JACK_BTN_2 | SND_JACK_BTN_3,
    &cz_jack, ((void*)0), 0);
 if (ret) {
  dev_err(card->dev, "HP jack creation failed %d\n", ret);
  return ret;
 }

 rt5645_set_jack_detect(codec, &cz_jack, &cz_jack, &cz_jack);

 return 0;
}
