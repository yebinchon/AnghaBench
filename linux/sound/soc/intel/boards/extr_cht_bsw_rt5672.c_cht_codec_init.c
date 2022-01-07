
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; int card; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_3__ {int jack; } ;
struct cht_mc_private {scalar_t__ mclk; TYPE_1__ headset; } ;


 int ARRAY_SIZE (int ) ;
 int CHT_PLAT_CLK_3_HZ ;
 int KEY_PLAYPAUSE ;
 int KEY_VOLUMEDOWN ;
 int KEY_VOLUMEUP ;
 int RT5670_AD_MONO_L_FILTER ;
 int RT5670_AD_MONO_R_FILTER ;
 int RT5670_AD_STEREO_FILTER ;
 int RT5670_CLK_SEL_I2S1_ASRC ;
 int RT5670_DA_MONO_L_FILTER ;
 int RT5670_DA_MONO_R_FILTER ;
 int RT5670_DA_STEREO_FILTER ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_BTN_1 ;
 int SND_JACK_BTN_2 ;
 int SND_JACK_HEADSET ;
 int cht_bsw_headset_pins ;
 int cht_rt5672_gpios ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int clk_set_rate (scalar_t__,int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 scalar_t__ devm_acpi_dev_add_driver_gpios (int ,int ) ;
 int rt5670_sel_asrc_clk_src (struct snd_soc_component*,int,int ) ;
 int rt5670_set_jack_detect (struct snd_soc_component*,TYPE_1__*) ;
 int snd_jack_set_key (int ,int,int ) ;
 struct cht_mc_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_card_jack_new (int ,char*,int,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int cht_codec_init(struct snd_soc_pcm_runtime *runtime)
{
 int ret;
 struct snd_soc_dai *codec_dai = runtime->codec_dai;
 struct snd_soc_component *component = codec_dai->component;
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(runtime->card);

 if (devm_acpi_dev_add_driver_gpios(component->dev, cht_rt5672_gpios))
  dev_warn(runtime->dev, "Unable to add GPIO mapping table\n");






 rt5670_sel_asrc_clk_src(component,
    RT5670_DA_STEREO_FILTER
    | RT5670_DA_MONO_L_FILTER
    | RT5670_DA_MONO_R_FILTER
    | RT5670_AD_STEREO_FILTER
    | RT5670_AD_MONO_L_FILTER
    | RT5670_AD_MONO_R_FILTER,
    RT5670_CLK_SEL_I2S1_ASRC);

        ret = snd_soc_card_jack_new(runtime->card, "Headset",
        SND_JACK_HEADSET | SND_JACK_BTN_0 |
        SND_JACK_BTN_1 | SND_JACK_BTN_2,
        &ctx->headset,
        cht_bsw_headset_pins,
        ARRAY_SIZE(cht_bsw_headset_pins));
        if (ret)
                return ret;

 snd_jack_set_key(ctx->headset.jack, SND_JACK_BTN_0, KEY_PLAYPAUSE);
 snd_jack_set_key(ctx->headset.jack, SND_JACK_BTN_1, KEY_VOLUMEUP);
 snd_jack_set_key(ctx->headset.jack, SND_JACK_BTN_2, KEY_VOLUMEDOWN);

 rt5670_set_jack_detect(component, &ctx->headset);
 if (ctx->mclk) {
  ret = clk_prepare_enable(ctx->mclk);
  if (!ret)
   clk_disable_unprepare(ctx->mclk);

  ret = clk_set_rate(ctx->mclk, CHT_PLAT_CLK_3_HZ);

  if (ret) {
   dev_err(runtime->dev, "unable to set MCLK rate\n");
   return ret;
  }
 }
 return 0;
}
