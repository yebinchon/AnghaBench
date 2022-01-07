
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {int dapm; } ;
struct cht_mc_private {int mclk; int jack; TYPE_2__* acpi_card; } ;
struct TYPE_4__ {scalar_t__ codec_type; } ;
struct TYPE_3__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (int ) ;
 int CHT_PLAT_CLK_3_HZ ;
 int CHT_RT5645_SSP0_AIF1 ;
 int CHT_RT5645_SSP0_AIF2 ;
 int CHT_RT5645_SSP2_AIF2 ;
 scalar_t__ CODEC_TYPE_RT5650 ;
 int RT5645_AD_STEREO_FILTER ;
 int RT5645_CLK_SEL_I2S1_ASRC ;
 int RT5645_CLK_SEL_I2S2_ASRC ;
 int RT5645_DA_MONO_L_FILTER ;
 int RT5645_DA_MONO_R_FILTER ;
 int RT5645_DA_STEREO_FILTER ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_BTN_3 ;
 int SND_JACK_HEADPHONE ;
 int SND_JACK_MICROPHONE ;
 int cht_bsw_jack_pins ;
 int cht_rt5645_quirk ;
 int cht_rt5645_ssp0_aif1_map ;
 int cht_rt5645_ssp0_aif2_map ;
 int cht_rt5645_ssp2_aif1_map ;
 int cht_rt5645_ssp2_aif2_map ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int ,char*,...) ;
 int rt5645_sel_asrc_clk_src (struct snd_soc_component*,int,int ) ;
 int rt5645_set_jack_detect (struct snd_soc_component*,int *,int *,int *) ;
 struct cht_mc_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,int *,int ,int ) ;
 int snd_soc_dapm_add_routes (int *,int ,int ) ;

__attribute__((used)) static int cht_codec_init(struct snd_soc_pcm_runtime *runtime)
{
 struct snd_soc_card *card = runtime->card;
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(runtime->card);
 struct snd_soc_component *component = runtime->codec_dai->component;
 int jack_type;
 int ret;

 if ((cht_rt5645_quirk & CHT_RT5645_SSP2_AIF2) ||
     (cht_rt5645_quirk & CHT_RT5645_SSP0_AIF2)) {

  rt5645_sel_asrc_clk_src(component,
     RT5645_DA_STEREO_FILTER |
     RT5645_DA_MONO_L_FILTER |
     RT5645_DA_MONO_R_FILTER |
     RT5645_AD_STEREO_FILTER,
     RT5645_CLK_SEL_I2S2_ASRC);
 } else {

  rt5645_sel_asrc_clk_src(component,
     RT5645_DA_STEREO_FILTER |
     RT5645_DA_MONO_L_FILTER |
     RT5645_DA_MONO_R_FILTER |
     RT5645_AD_STEREO_FILTER,
     RT5645_CLK_SEL_I2S1_ASRC);
 }

 if (cht_rt5645_quirk & CHT_RT5645_SSP2_AIF2) {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     cht_rt5645_ssp2_aif2_map,
     ARRAY_SIZE(cht_rt5645_ssp2_aif2_map));
 } else if (cht_rt5645_quirk & CHT_RT5645_SSP0_AIF1) {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     cht_rt5645_ssp0_aif1_map,
     ARRAY_SIZE(cht_rt5645_ssp0_aif1_map));
 } else if (cht_rt5645_quirk & CHT_RT5645_SSP0_AIF2) {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     cht_rt5645_ssp0_aif2_map,
     ARRAY_SIZE(cht_rt5645_ssp0_aif2_map));
 } else {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     cht_rt5645_ssp2_aif1_map,
     ARRAY_SIZE(cht_rt5645_ssp2_aif1_map));
 }
 if (ret)
  return ret;

 if (ctx->acpi_card->codec_type == CODEC_TYPE_RT5650)
  jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE |
     SND_JACK_BTN_0 | SND_JACK_BTN_1 |
     SND_JACK_BTN_2 | SND_JACK_BTN_3;
 else
  jack_type = SND_JACK_HEADPHONE | SND_JACK_MICROPHONE;

 ret = snd_soc_card_jack_new(runtime->card, "Headset",
        jack_type, &ctx->jack,
        cht_bsw_jack_pins, ARRAY_SIZE(cht_bsw_jack_pins));
 if (ret) {
  dev_err(runtime->dev, "Headset jack creation failed %d\n", ret);
  return ret;
 }

 rt5645_set_jack_detect(component, &ctx->jack, &ctx->jack, &ctx->jack);
 ret = clk_prepare_enable(ctx->mclk);
 if (!ret)
  clk_disable_unprepare(ctx->mclk);

 ret = clk_set_rate(ctx->mclk, CHT_PLAT_CLK_3_HZ);

 if (ret)
  dev_err(runtime->dev, "unable to set MCLK rate\n");

 return ret;
}
