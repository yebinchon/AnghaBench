
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* component; } ;
struct TYPE_2__ {int dev; } ;


 int BYT_RT5651_MCLK_25MHZ ;
 int BYT_RT5651_MCLK_EN ;
 int RT5651_PLL1_S_BCLK1 ;
 int RT5651_PLL1_S_MCLK ;
 int RT5651_SCLK_S_PLL1 ;
 int SND_SOC_CLOCK_IN ;
 int byt_rt5651_quirk ;
 int dev_err (int ,char*,int) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int,int,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int byt_rt5651_prepare_and_enable_pll1(struct snd_soc_dai *codec_dai,
           int rate, int bclk_ratio)
{
 int clk_id, clk_freq, ret;


 if (!(byt_rt5651_quirk & BYT_RT5651_MCLK_EN)) {
  clk_id = RT5651_PLL1_S_BCLK1,
  clk_freq = rate * bclk_ratio;
 } else {
  clk_id = RT5651_PLL1_S_MCLK;
  if (byt_rt5651_quirk & BYT_RT5651_MCLK_25MHZ)
   clk_freq = 25000000;
  else
   clk_freq = 19200000;
 }
 ret = snd_soc_dai_set_pll(codec_dai, 0, clk_id, clk_freq, rate * 512);
 if (ret < 0) {
  dev_err(codec_dai->component->dev, "can't set pll: %d\n", ret);
  return ret;
 }

 ret = snd_soc_dai_set_sysclk(codec_dai, RT5651_SCLK_S_PLL1,
         rate * 512, SND_SOC_CLOCK_IN);
 if (ret < 0) {
  dev_err(codec_dai->component->dev, "can't set clock %d\n", ret);
  return ret;
 }

 return 0;
}
