
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int DA7213_CLKSRC_MCLK ;
 int DA7213_PLL_FREQ_OUT_98304000 ;
 int DA7213_SYSCLK_PLL_SRM ;
 int EIO ;
 int SND_SOC_CLOCK_IN ;
 int dev_err (int ,char*,...) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int aif1_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, DA7213_CLKSRC_MCLK,
         19200000, SND_SOC_CLOCK_IN);
 if (ret < 0)
  dev_err(codec_dai->dev, "can't set codec sysclk configuration\n");

 ret = snd_soc_dai_set_pll(codec_dai, 0,
   DA7213_SYSCLK_PLL_SRM, 0, DA7213_PLL_FREQ_OUT_98304000);
 if (ret < 0) {
  dev_err(codec_dai->dev, "failed to start PLL: %d\n", ret);
  return -EIO;
 }

 return ret;
}
