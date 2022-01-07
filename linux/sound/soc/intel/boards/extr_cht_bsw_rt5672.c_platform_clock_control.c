
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct cht_mc_private {scalar_t__ mclk; } ;


 int CHT_CODEC_DAI ;
 int CHT_PLAT_CLK_3_HZ ;
 int EIO ;
 int RT5670_PLL1_S_MCLK ;
 int RT5670_SCLK_S_PLL1 ;
 int RT5670_SCLK_S_RCCLK ;
 int SND_SOC_CLOCK_IN ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int ,char*,...) ;
 struct snd_soc_dai* snd_soc_card_get_codec_dai (struct snd_soc_card*,int ) ;
 struct cht_mc_private* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int platform_clock_control(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *k, int event)
{
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct snd_soc_dai *codec_dai;
 struct cht_mc_private *ctx = snd_soc_card_get_drvdata(card);
 int ret;

 codec_dai = snd_soc_card_get_codec_dai(card, CHT_CODEC_DAI);
 if (!codec_dai) {
  dev_err(card->dev, "Codec dai not found; Unable to set platform clock\n");
  return -EIO;
 }

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  if (ctx->mclk) {
   ret = clk_prepare_enable(ctx->mclk);
   if (ret < 0) {
    dev_err(card->dev,
     "could not configure MCLK state");
    return ret;
   }
  }


  ret = snd_soc_dai_set_pll(codec_dai, 0, RT5670_PLL1_S_MCLK,
    CHT_PLAT_CLK_3_HZ, 48000 * 512);
  if (ret < 0) {
   dev_err(card->dev, "can't set codec pll: %d\n", ret);
   return ret;
  }


  ret = snd_soc_dai_set_sysclk(codec_dai, RT5670_SCLK_S_PLL1,
   48000 * 512, SND_SOC_CLOCK_IN);
  if (ret < 0) {
   dev_err(card->dev, "can't set codec sysclk: %d\n", ret);
   return ret;
  }
 } else {





  snd_soc_dai_set_sysclk(codec_dai, RT5670_SCLK_S_RCCLK,
           48000 * 512, SND_SOC_CLOCK_IN);

  if (ctx->mclk)
   clk_disable_unprepare(ctx->mclk);
 }
 return 0;
}
