
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_jack {int jack; } ;
struct sof_card_private {struct snd_soc_jack sof_headset; int mclk; } ;
struct snd_soc_pcm_runtime {int dev; int card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {struct snd_soc_component* component; } ;


 int KEY_PLAYPAUSE ;
 int KEY_VOICECOMMAND ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int RT5682_AD_STEREO1_FILTER ;
 int RT5682_CLK_SEL_I2S1_ASRC ;
 int RT5682_DA_STEREO1_FILTER ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADSET ;
 int SOF_RT5682_MCLK_24MHZ ;
 int SOF_RT5682_MCLK_BYTCHT_EN ;
 int SOF_RT5682_MCLK_EN ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,...) ;
 int rt5682_sel_asrc_clk_src (struct snd_soc_component*,int,int ) ;
 int snd_jack_set_key (int ,int,int ) ;
 struct sof_card_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int,struct snd_soc_jack*,int *,int ) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,struct snd_soc_jack*,int *) ;
 int sof_rt5682_quirk ;

__attribute__((used)) static int sof_rt5682_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct sof_card_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_component *component = rtd->codec_dai->component;
 struct snd_soc_jack *jack;
 int ret;


 if ((sof_rt5682_quirk & SOF_RT5682_MCLK_EN) &&
     (sof_rt5682_quirk & SOF_RT5682_MCLK_24MHZ)) {
  rt5682_sel_asrc_clk_src(component, RT5682_DA_STEREO1_FILTER |
     RT5682_AD_STEREO1_FILTER,
     RT5682_CLK_SEL_I2S1_ASRC);
 }

 if (sof_rt5682_quirk & SOF_RT5682_MCLK_BYTCHT_EN) {
  ret = clk_prepare_enable(ctx->mclk);
  if (!ret)
   clk_disable_unprepare(ctx->mclk);

  ret = clk_set_rate(ctx->mclk, 19200000);

  if (ret)
   dev_err(rtd->dev, "unable to set MCLK rate\n");
 }





 ret = snd_soc_card_jack_new(rtd->card, "Headset Jack",
        SND_JACK_HEADSET | SND_JACK_BTN_0 |
        SND_JACK_BTN_1 | SND_JACK_BTN_2 |
        SND_JACK_BTN_3,
        &ctx->sof_headset, ((void*)0), 0);
 if (ret) {
  dev_err(rtd->dev, "Headset Jack creation failed: %d\n", ret);
  return ret;
 }

 jack = &ctx->sof_headset;

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
