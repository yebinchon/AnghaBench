
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_jack {int jack; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dapm; } ;
struct kbl_codec_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int da7219_aad_jack_det (struct snd_soc_component*,struct snd_soc_jack*) ;
 int dev_err (int ,char*,int) ;
 int kabylake_audio_card ;
 int kabylake_ssp1_map ;
 int snd_jack_set_key (int ,int,int ) ;
 struct kbl_codec_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (int ,char*,int,struct snd_soc_jack*,int *,int ) ;
 int snd_soc_dapm_add_routes (int *,int ,int ) ;

__attribute__((used)) static int kabylake_da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct kbl_codec_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_jack *jack;
 struct snd_soc_card *card = rtd->card;
 int ret;


 ret = snd_soc_dapm_add_routes(&card->dapm,
   kabylake_ssp1_map,
   ARRAY_SIZE(kabylake_ssp1_map));





 ret = snd_soc_card_jack_new(kabylake_audio_card, "Headset Jack",
   SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
   SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
   &ctx->kabylake_headset, ((void*)0), 0);
 if (ret) {
  dev_err(rtd->dev, "Headset Jack creation failed: %d\n", ret);
  return ret;
 }

 jack = &ctx->kabylake_headset;
 snd_jack_set_key(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOICECOMMAND);

 da7219_aad_jack_det(component, &ctx->kabylake_headset);

 return 0;
}
