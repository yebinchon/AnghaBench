
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {struct snd_soc_dapm_context* dapm; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int BXT_DIALOG_CODEC_DAI ;
 int DA7219_PLL_FREQ_OUT_98304 ;
 int DA7219_SYSCLK_MCLK ;
 int DA7219_SYSCLK_PLL_SRM ;
 int EIO ;
 scalar_t__ SND_SOC_DAPM_EVENT_OFF (int) ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int dev_err (int ,char*,...) ;
 struct snd_soc_dai* snd_soc_card_get_codec_dai (struct snd_soc_card*,int ) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int ) ;

__attribute__((used)) static int platform_clock_control(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *k, int event)
{
 int ret = 0;
 struct snd_soc_dapm_context *dapm = w->dapm;
 struct snd_soc_card *card = dapm->card;
 struct snd_soc_dai *codec_dai;

 codec_dai = snd_soc_card_get_codec_dai(card, BXT_DIALOG_CODEC_DAI);
 if (!codec_dai) {
  dev_err(card->dev, "Codec dai not found; Unable to set/unset codec pll\n");
  return -EIO;
 }

 if (SND_SOC_DAPM_EVENT_OFF(event)) {
  ret = snd_soc_dai_set_pll(codec_dai, 0,
   DA7219_SYSCLK_MCLK, 0, 0);
  if (ret)
   dev_err(card->dev, "failed to stop PLL: %d\n", ret);
 } else if(SND_SOC_DAPM_EVENT_ON(event)) {
  ret = snd_soc_dai_set_pll(codec_dai, 0,
   DA7219_SYSCLK_PLL_SRM, 0, DA7219_PLL_FREQ_OUT_98304);
  if (ret)
   dev_err(card->dev, "failed to start PLL: %d\n", ret);
 }

 return ret;
}
