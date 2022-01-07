
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; struct snd_soc_card* card; TYPE_1__* codec_dai; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_7__ {int idle_bias_off; } ;
struct snd_soc_card {int dev; TYPE_2__ dapm; } ;
struct TYPE_8__ {int jack; } ;
struct byt_rt5651_private {scalar_t__ hp_detect; TYPE_4__ jack; int mclk; } ;
struct TYPE_6__ {struct snd_soc_component* component; } ;


 int ARRAY_SIZE (struct snd_soc_dapm_route const*) ;



 scalar_t__ BYT_RT5651_JDSRC (int) ;
 int BYT_RT5651_MAP (int) ;
 int BYT_RT5651_MCLK_25MHZ ;
 int BYT_RT5651_MCLK_EN ;
 int BYT_RT5651_SSP0_AIF1 ;
 int BYT_RT5651_SSP0_AIF2 ;
 int BYT_RT5651_SSP2_AIF2 ;
 int KEY_PLAYPAUSE ;
 int RT5651_GLB_CLK ;
 int RT5651_SCLK_SRC_MASK ;
 int RT5651_SCLK_SRC_RCCLK ;
 int SND_JACK_BTN_0 ;
 int SND_JACK_HEADSET ;
 struct snd_soc_dapm_route const* byt_rt5651_controls ;
 struct snd_soc_dapm_route const* byt_rt5651_intmic_dmic_map ;
 struct snd_soc_dapm_route const* byt_rt5651_intmic_in1_in2_map ;
 struct snd_soc_dapm_route const* byt_rt5651_intmic_in1_map ;
 struct snd_soc_dapm_route const* byt_rt5651_intmic_in2_map ;
 int byt_rt5651_quirk ;
 struct snd_soc_dapm_route const* byt_rt5651_ssp0_aif1_map ;
 struct snd_soc_dapm_route const* byt_rt5651_ssp0_aif2_map ;
 struct snd_soc_dapm_route const* byt_rt5651_ssp2_aif1_map ;
 struct snd_soc_dapm_route const* byt_rt5651_ssp2_aif2_map ;
 struct snd_soc_dapm_route const* bytcr_jack_pins ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;
 int dev_err (int ,char*,...) ;
 int snd_jack_set_key (int ,int,int ) ;
 int snd_soc_add_card_controls (struct snd_soc_card*,struct snd_soc_dapm_route const*,int) ;
 struct byt_rt5651_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_card_jack_new (struct snd_soc_card*,char*,int,TYPE_4__*,struct snd_soc_dapm_route const*,int) ;
 int snd_soc_component_set_jack (struct snd_soc_component*,TYPE_4__*,scalar_t__) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_dapm_add_routes (TYPE_2__*,struct snd_soc_dapm_route const*,int) ;
 int snd_soc_dapm_ignore_suspend (TYPE_2__*,char*) ;

__attribute__((used)) static int byt_rt5651_init(struct snd_soc_pcm_runtime *runtime)
{
 struct snd_soc_card *card = runtime->card;
 struct snd_soc_component *codec = runtime->codec_dai->component;
 struct byt_rt5651_private *priv = snd_soc_card_get_drvdata(card);
 const struct snd_soc_dapm_route *custom_map;
 int num_routes;
 int report;
 int ret;

 card->dapm.idle_bias_off = 1;


 if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN)
  snd_soc_component_update_bits(codec, RT5651_GLB_CLK,
   RT5651_SCLK_SRC_MASK, RT5651_SCLK_SRC_RCCLK);

 switch (BYT_RT5651_MAP(byt_rt5651_quirk)) {
 case 129:
  custom_map = byt_rt5651_intmic_in1_map;
  num_routes = ARRAY_SIZE(byt_rt5651_intmic_in1_map);
  break;
 case 128:
  custom_map = byt_rt5651_intmic_in2_map;
  num_routes = ARRAY_SIZE(byt_rt5651_intmic_in2_map);
  break;
 case 130:
  custom_map = byt_rt5651_intmic_in1_in2_map;
  num_routes = ARRAY_SIZE(byt_rt5651_intmic_in1_in2_map);
  break;
 default:
  custom_map = byt_rt5651_intmic_dmic_map;
  num_routes = ARRAY_SIZE(byt_rt5651_intmic_dmic_map);
 }
 ret = snd_soc_dapm_add_routes(&card->dapm, custom_map, num_routes);
 if (ret)
  return ret;

 if (byt_rt5651_quirk & BYT_RT5651_SSP2_AIF2) {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     byt_rt5651_ssp2_aif2_map,
     ARRAY_SIZE(byt_rt5651_ssp2_aif2_map));
 } else if (byt_rt5651_quirk & BYT_RT5651_SSP0_AIF1) {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     byt_rt5651_ssp0_aif1_map,
     ARRAY_SIZE(byt_rt5651_ssp0_aif1_map));
 } else if (byt_rt5651_quirk & BYT_RT5651_SSP0_AIF2) {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     byt_rt5651_ssp0_aif2_map,
     ARRAY_SIZE(byt_rt5651_ssp0_aif2_map));
 } else {
  ret = snd_soc_dapm_add_routes(&card->dapm,
     byt_rt5651_ssp2_aif1_map,
     ARRAY_SIZE(byt_rt5651_ssp2_aif1_map));
 }
 if (ret)
  return ret;

 ret = snd_soc_add_card_controls(card, byt_rt5651_controls,
     ARRAY_SIZE(byt_rt5651_controls));
 if (ret) {
  dev_err(card->dev, "unable to add card controls\n");
  return ret;
 }
 snd_soc_dapm_ignore_suspend(&card->dapm, "Headphone");
 snd_soc_dapm_ignore_suspend(&card->dapm, "Speaker");

 if (byt_rt5651_quirk & BYT_RT5651_MCLK_EN) {
  ret = clk_prepare_enable(priv->mclk);
  if (!ret)
   clk_disable_unprepare(priv->mclk);

  if (byt_rt5651_quirk & BYT_RT5651_MCLK_25MHZ)
   ret = clk_set_rate(priv->mclk, 25000000);
  else
   ret = clk_set_rate(priv->mclk, 19200000);

  if (ret)
   dev_err(card->dev, "unable to set MCLK rate\n");
 }

 report = 0;
 if (BYT_RT5651_JDSRC(byt_rt5651_quirk))
  report = SND_JACK_HEADSET | SND_JACK_BTN_0;
 else if (priv->hp_detect)
  report = SND_JACK_HEADSET;

 if (report) {
  ret = snd_soc_card_jack_new(runtime->card, "Headset",
        report, &priv->jack, bytcr_jack_pins,
        ARRAY_SIZE(bytcr_jack_pins));
  if (ret) {
   dev_err(runtime->dev, "jack creation failed %d\n", ret);
   return ret;
  }

  if (report & SND_JACK_BTN_0)
   snd_jack_set_key(priv->jack.jack, SND_JACK_BTN_0,
      KEY_PLAYPAUSE);

  ret = snd_soc_component_set_jack(codec, &priv->jack,
       priv->hp_detect);
  if (ret)
   return ret;
 }

 return 0;
}
