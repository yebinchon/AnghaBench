
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int SND_SOC_SPDIF_INT_MCLK ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int set_audio_clock_rate (unsigned long,unsigned long) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned long,int ) ;

__attribute__((used)) static int smdk_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 unsigned long pll_out, rclk_rate;
 int ret, ratio;

 switch (params_rate(params)) {
 case 44100:
  pll_out = 45158400;
  break;
 case 32000:
 case 48000:
 case 96000:
  pll_out = 49152000;
  break;
 default:
  return -EINVAL;
 }




 ratio = 512;
 rclk_rate = params_rate(params) * ratio;


 ret = set_audio_clock_rate(pll_out, rclk_rate);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(cpu_dai, SND_SOC_SPDIF_INT_MCLK,
     rclk_rate, SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;

 return ret;
}
