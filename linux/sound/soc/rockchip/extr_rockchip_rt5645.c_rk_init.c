
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* codec_dai; struct snd_soc_card* card; } ;
struct snd_soc_card {int dev; } ;
struct TYPE_2__ {int component; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int dev_err (int ,char*,int) ;
 int headset_jack ;
 int rt5645_set_jack_detect (int ,int *,int *,int *) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,int *,int *,int ) ;

__attribute__((used)) static int rk_init(struct snd_soc_pcm_runtime *runtime)
{
 struct snd_soc_card *card = runtime->card;
 int ret;


 ret = snd_soc_card_jack_new(card, "Headset Jack",
        SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
        SND_JACK_BTN_0 | SND_JACK_BTN_1 |
        SND_JACK_BTN_2 | SND_JACK_BTN_3,
        &headset_jack, ((void*)0), 0);
 if (ret) {
  dev_err(card->dev, "New Headset Jack failed! (%d)\n", ret);
  return ret;
 }

 return rt5645_set_jack_detect(runtime->codec_dai->component,
         &headset_jack,
         &headset_jack,
         &headset_jack);
}
