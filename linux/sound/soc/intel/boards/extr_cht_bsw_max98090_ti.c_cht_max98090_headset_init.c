
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {struct snd_soc_card* card; } ;
struct snd_soc_card {int dev; } ;
struct cht_mc_private {struct snd_soc_jack jack; } ;


 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int dev_err (int ,char*,int) ;
 struct cht_mc_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,struct snd_soc_jack*,int *,int ) ;
 int ts3a227e_enable_jack_detect (struct snd_soc_component*,struct snd_soc_jack*) ;

__attribute__((used)) static int cht_max98090_headset_init(struct snd_soc_component *component)
{
 struct snd_soc_card *card = component->card;
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(card);
 struct snd_soc_jack *jack = &ctx->jack;
 int jack_type;
 int ret;
 jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
      SND_JACK_BTN_0 | SND_JACK_BTN_1 |
      SND_JACK_BTN_2 | SND_JACK_BTN_3;

 ret = snd_soc_card_jack_new(card, "Headset Jack", jack_type,
        jack, ((void*)0), 0);
 if (ret) {
  dev_err(card->dev, "Headset Jack creation failed %d\n", ret);
  return ret;
 }

 return ts3a227e_enable_jack_detect(component, jack);
}
