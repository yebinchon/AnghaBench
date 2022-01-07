
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int PXA_SSP_CLK_AUDIO ;
 int WM9713_PCMCLK_DIV ;
 int WM9713_PCMCLK_PLL_DIV ;
 int WM9713_PCMDIV (unsigned int) ;
 scalar_t__ clk_pout ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int) ;

__attribute__((used)) static int zylonite_voice_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 unsigned int wm9713_div = 0;
 int ret = 0;
 int rate = params_rate(params);






 switch (rate) {
 case 8000:
  wm9713_div = 12;
  break;
 case 16000:
  wm9713_div = 6;
  break;
 case 48000:
  wm9713_div = 2;
  break;
 default:

  return -EINVAL;
 }

 ret = snd_soc_dai_set_sysclk(cpu_dai, PXA_SSP_CLK_AUDIO, 0, 1);
 if (ret < 0)
  return ret;

 if (clk_pout)
  ret = snd_soc_dai_set_clkdiv(codec_dai, WM9713_PCMCLK_PLL_DIV,
          WM9713_PCMDIV(wm9713_div));
 else
  ret = snd_soc_dai_set_clkdiv(codec_dai, WM9713_PCMCLK_DIV,
          WM9713_PCMDIV(wm9713_div));
 if (ret < 0)
  return ret;

 return 0;
}
