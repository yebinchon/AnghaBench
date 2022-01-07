
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct byt_rt5640_private {int mclk; } ;


 int BYT_CODEC_DAI1 ;
 int BYT_CODEC_DAI2 ;
 int BYT_RT5640_MCLK_EN ;
 int EIO ;
 int RT5640_SCLK_S_RCCLK ;
 int SND_SOC_CLOCK_IN ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int byt_rt5640_prepare_and_enable_pll1 (struct snd_soc_dai*,int) ;
 int byt_rt5640_quirk ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,...) ;
 struct snd_soc_dai* snd_soc_card_get_codec_dai (struct snd_soc_card*,int ) ;
 struct byt_rt5640_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int platform_clock_control(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct snd_soc_dai *codec_dai;
 struct byt_rt5640_private *priv = snd_soc_card_get_drvdata(card);
 int ret;

 codec_dai = snd_soc_card_get_codec_dai(card, BYT_CODEC_DAI1);
 if (!codec_dai)
  codec_dai = snd_soc_card_get_codec_dai(card, BYT_CODEC_DAI2);

 if (!codec_dai) {
  dev_err(card->dev,
   "Codec dai not found; Unable to set platform clock\n");
  return -EIO;
 }

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  if (byt_rt5640_quirk & BYT_RT5640_MCLK_EN) {
   ret = clk_prepare_enable(priv->mclk);
   if (ret < 0) {
    dev_err(card->dev,
     "could not configure MCLK state\n");
    return ret;
   }
  }
  ret = byt_rt5640_prepare_and_enable_pll1(codec_dai, 48000);
 } else {





  ret = snd_soc_dai_set_sysclk(codec_dai, RT5640_SCLK_S_RCCLK,
          48000 * 512,
          SND_SOC_CLOCK_IN);
  if (!ret) {
   if (byt_rt5640_quirk & BYT_RT5640_MCLK_EN)
    clk_disable_unprepare(priv->mclk);
  }
 }

 if (ret < 0) {
  dev_err(card->dev, "can't set codec sysclk: %d\n", ret);
  return ret;
 }

 return 0;
}
