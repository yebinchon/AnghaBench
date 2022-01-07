
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; int dev; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_6__ {int jack; } ;
struct TYPE_5__ {int dapm; } ;


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
 TYPE_2__ broxton_headset ;
 int da7219_aad_jack_det (struct snd_soc_component*,TYPE_2__*) ;
 int dev_err (int ,char*,...) ;
 int snd_jack_set_key (int ,int,int ) ;
 int snd_soc_card_jack_new (TYPE_1__*,char*,int,TYPE_2__*,int *,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 int snd_soc_dapm_ignore_suspend (int *,char*) ;
 scalar_t__ soc_intel_is_cml () ;

__attribute__((used)) static int broxton_da7219_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 int ret;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_component *component = rtd->codec_dai->component;
 int clk_freq;


 if (soc_intel_is_cml())
  clk_freq = 24000000;
 else
  clk_freq = 19200000;

 ret = snd_soc_dai_set_sysclk(codec_dai, DA7219_CLKSRC_MCLK, clk_freq,
         SND_SOC_CLOCK_IN);

 if (ret) {
  dev_err(rtd->dev, "can't set codec sysclk configuration\n");
  return ret;
 }





 ret = snd_soc_card_jack_new(rtd->card, "Headset Jack",
   SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
   SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
   &broxton_headset, ((void*)0), 0);
 if (ret) {
  dev_err(rtd->dev, "Headset Jack creation failed: %d\n", ret);
  return ret;
 }

 snd_jack_set_key(broxton_headset.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(broxton_headset.jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
 snd_jack_set_key(broxton_headset.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);
 snd_jack_set_key(broxton_headset.jack, SND_JACK_BTN_3,
    KEY_VOICECOMMAND);

 da7219_aad_jack_det(component, &broxton_headset);

 snd_soc_dapm_ignore_suspend(&rtd->card->dapm, "SoC DMIC");

 return ret;
}
