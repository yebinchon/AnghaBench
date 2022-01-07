
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; int card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_jack {int jack; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct glk_card_private {struct snd_soc_jack geminilake_headset; } ;


 int GLK_PLAT_CLK_FREQ ;
 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int RT5682_PLL1_S_MCLK ;
 int RT5682_PLL_FREQ ;
 int RT5682_SCLK_S_PLL1 ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int SND_JACK_LINEOUT ;
 int SND_SOC_CLOCK_IN ;
 int dev_err (int ,char*,int) ;
 int snd_jack_set_key (int ,int,int ) ;
 struct glk_card_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int,struct snd_soc_jack*,int *,int ) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,struct snd_soc_jack*,int *) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;

__attribute__((used)) static int geminilake_rt5682_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct glk_card_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_jack *jack;
 int ret;

 ret = snd_soc_dai_set_pll(codec_dai, 0, RT5682_PLL1_S_MCLK,
     GLK_PLAT_CLK_FREQ, RT5682_PLL_FREQ);
 if (ret < 0) {
  dev_err(rtd->dev, "can't set codec pll: %d\n", ret);
  return ret;
 }


 ret = snd_soc_dai_set_sysclk(codec_dai, RT5682_SCLK_S_PLL1,
     RT5682_PLL_FREQ, SND_SOC_CLOCK_IN);
 if (ret < 0)
  dev_err(rtd->dev, "snd_soc_dai_set_sysclk err = %d\n", ret);





 ret = snd_soc_card_jack_new(rtd->card, "Headset Jack",
   SND_JACK_HEADSET | SND_JACK_BTN_0 | SND_JACK_BTN_1 |
   SND_JACK_BTN_2 | SND_JACK_BTN_3 | SND_JACK_LINEOUT,
   &ctx->geminilake_headset, ((void*)0), 0);
 if (ret) {
  dev_err(rtd->dev, "Headset Jack creation failed: %d\n", ret);
  return ret;
 }

 jack = &ctx->geminilake_headset;

 snd_jack_set_key(jack->jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_1, KEY_VOICECOMMAND);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
 snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);

 ret = snd_soc_component_set_jack(component, jack, ((void*)0));

 if (ret) {
  dev_err(rtd->dev, "Headset Jack call-back failed: %d\n", ret);
  return ret;
 }

 return ret;
}
