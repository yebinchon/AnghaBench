
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* component; } ;
struct TYPE_2__ {int dev; } ;


 int BYT_RT5640_MCLK_25MHZ ;
 int BYT_RT5640_MCLK_EN ;
 int BYT_RT5640_SSP0_AIF1 ;
 int BYT_RT5640_SSP0_AIF2 ;
 int RT5640_PLL1_S_BCLK1 ;
 int RT5640_PLL1_S_MCLK ;
 int RT5640_SCLK_S_PLL1 ;
 int SND_SOC_CLOCK_IN ;
 int byt_rt5640_quirk ;
 int dev_err (int ,char*,int) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int byt_rt5640_prepare_and_enable_pll1(struct snd_soc_dai *codec_dai,
           int rate)
{
 int ret;


 if (!(byt_rt5640_quirk & BYT_RT5640_MCLK_EN)) {

  if ((byt_rt5640_quirk & BYT_RT5640_SSP0_AIF1) ||
      (byt_rt5640_quirk & BYT_RT5640_SSP0_AIF2)) {

   ret = snd_soc_dai_set_pll(codec_dai, 0,
        RT5640_PLL1_S_BCLK1,
        rate * 32, rate * 512);
  } else {

   ret = snd_soc_dai_set_pll(codec_dai, 0,
        RT5640_PLL1_S_BCLK1,
        rate * 50, rate * 512);
  }
 } else {
  if (byt_rt5640_quirk & BYT_RT5640_MCLK_25MHZ) {
   ret = snd_soc_dai_set_pll(codec_dai, 0,
        RT5640_PLL1_S_MCLK,
        25000000, rate * 512);
  } else {
   ret = snd_soc_dai_set_pll(codec_dai, 0,
        RT5640_PLL1_S_MCLK,
        19200000, rate * 512);
  }
 }

 if (ret < 0) {
  dev_err(codec_dai->component->dev, "can't set pll: %d\n", ret);
  return ret;
 }

 ret = snd_soc_dai_set_sysclk(codec_dai, RT5640_SCLK_S_PLL1,
         rate * 512, SND_SOC_CLOCK_IN);
 if (ret < 0) {
  dev_err(codec_dai->component->dev, "can't set clock %d\n", ret);
  return ret;
 }

 return 0;
}
