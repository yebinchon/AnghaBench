
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_1__* card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_jack {int jack; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct kbl_codec_private {struct snd_soc_jack kabylake_headset; } ;
struct TYPE_2__ {int dapm; } ;


 int DA7219_CLKSRC_MCLK ;
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
 int SND_SOC_CLOCK_IN ;
 int da7219_aad_jack_det (struct snd_soc_component*,struct snd_soc_jack*) ;
 int dev_err (int ,char*,...) ;
 int kabylake_audio_card ;
 int snd_jack_set_key (int ,int,int ) ;
 struct kbl_codec_private* snd_soc_card_get_drvdata (TYPE_1__*) ;
 int snd_soc_card_jack_new (int ,char*,int,struct snd_soc_jack*,int *,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;

__attribute__((used)) static int kabylake_da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct kbl_codec_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_jack *jack;
 int ret;


 ret = snd_soc_dai_set_sysclk(codec_dai, DA7219_CLKSRC_MCLK, 24576000,
      SND_SOC_CLOCK_IN);
 if (ret) {
  dev_err(rtd->dev, "can't set codec sysclk configuration\n");
  return ret;
 }





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

 ret = snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");
 if (ret)
  dev_err(rtd->dev, "SoC DMIC - Ignore suspend failed %d\n", ret);

 return ret;
}
