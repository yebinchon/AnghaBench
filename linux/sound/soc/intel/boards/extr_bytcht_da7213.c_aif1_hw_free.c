
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int DA7213_SYSCLK_MCLK ;
 int EIO ;
 int dev_err (int ,char*,int) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int ) ;

__attribute__((used)) static int aif1_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;

 ret = snd_soc_dai_set_pll(codec_dai, 0,
      DA7213_SYSCLK_MCLK, 0, 0);
 if (ret < 0) {
  dev_err(codec_dai->dev, "failed to stop PLL: %d\n", ret);
  return -EIO;
 }

 return ret;
}
