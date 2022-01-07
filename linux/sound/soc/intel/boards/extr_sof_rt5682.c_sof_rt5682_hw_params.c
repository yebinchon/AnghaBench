
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_card_private {int mclk; } ;
struct snd_soc_pcm_runtime {int dev; struct snd_soc_dai* codec_dai; int card; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int RT5682_PLL1_S_BCLK1 ;
 int RT5682_PLL1_S_MCLK ;
 int RT5682_SCLK_S_PLL1 ;
 int SND_SOC_CLOCK_IN ;
 int SOF_RT5682_MCLK_24MHZ ;
 int SOF_RT5682_MCLK_BYTCHT_EN ;
 int SOF_RT5682_MCLK_EN ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,...) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 struct sof_card_private* snd_soc_card_get_drvdata (int ) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int,int,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int,int,int ) ;
 int sof_rt5682_quirk ;

__attribute__((used)) static int sof_rt5682_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct sof_card_private *ctx = snd_soc_card_get_drvdata(rtd->card);
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int clk_id, clk_freq, pll_out, ret;

 if (sof_rt5682_quirk & SOF_RT5682_MCLK_EN) {
  if (sof_rt5682_quirk & SOF_RT5682_MCLK_BYTCHT_EN) {
   ret = clk_prepare_enable(ctx->mclk);
   if (ret < 0) {
    dev_err(rtd->dev,
     "could not configure MCLK state");
    return ret;
   }
  }

  clk_id = RT5682_PLL1_S_MCLK;
  if (sof_rt5682_quirk & SOF_RT5682_MCLK_24MHZ)
   clk_freq = 24000000;
  else
   clk_freq = 19200000;
 } else {
  clk_id = RT5682_PLL1_S_BCLK1;
  clk_freq = params_rate(params) * 50;
 }

 pll_out = params_rate(params) * 512;

 ret = snd_soc_dai_set_pll(codec_dai, 0, clk_id, clk_freq, pll_out);
 if (ret < 0)
  dev_err(rtd->dev, "snd_soc_dai_set_pll err = %d\n", ret);


 ret = snd_soc_dai_set_sysclk(codec_dai, RT5682_SCLK_S_PLL1,
         pll_out, SND_SOC_CLOCK_IN);
 if (ret < 0)
  dev_err(rtd->dev, "snd_soc_dai_set_sysclk err = %d\n", ret);





 ret = snd_soc_dai_set_tdm_slot(codec_dai, 0x0, 0x0, 2,
           params_width(params));
 if (ret < 0) {
  dev_err(rtd->dev, "set TDM slot err:%d\n", ret);
  return ret;
 }

 return ret;
}
