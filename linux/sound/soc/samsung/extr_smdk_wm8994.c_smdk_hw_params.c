
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SMDK_WM8994_FREQ ;
 int SND_SOC_CLOCK_IN ;
 int WM8994_FLL1 ;
 int WM8994_FLL_SRC_MCLK1 ;
 int WM8994_SYSCLK_FLL1 ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,unsigned int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int smdk_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 unsigned int pll_out;
 int ret;


 if (params_width(params) == 24)
  pll_out = params_rate(params) * 384;
 else if (params_rate(params) == 8000 || params_rate(params) == 11025)
  pll_out = params_rate(params) * 512;
 else
  pll_out = params_rate(params) * 256;

 ret = snd_soc_dai_set_pll(codec_dai, WM8994_FLL1, WM8994_FLL_SRC_MCLK1,
     SMDK_WM8994_FREQ, pll_out);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, WM8994_SYSCLK_FLL1,
     pll_out, SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;

 return 0;
}
