
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int NAU8824_CLK_FLL_FS ;
 int SND_SOC_CLOCK_IN ;
 int dev_err (int ,char*,int) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;

__attribute__((used)) static int cht_aif1_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, NAU8824_CLK_FLL_FS, 0,
  SND_SOC_CLOCK_IN);
 if (ret < 0) {
  dev_err(codec_dai->dev, "can't set FS clock %d\n", ret);
  return ret;
 }
 ret = snd_soc_dai_set_pll(codec_dai, 0, 0, params_rate(params),
  params_rate(params) * 256);
 if (ret < 0) {
  dev_err(codec_dai->dev, "can't set FLL: %d\n", ret);
  return ret;
 }

 return 0;
}
