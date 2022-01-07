
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SAMSUNG_I2S_CDCLK ;
 int SAMSUNG_I2S_RCLKSRC_0 ;
 int SND_SOC_CLOCK_OUT ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned long,int ) ;

__attribute__((used)) static int arndale_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int rfs, ret;
 unsigned long rclk;

 rfs = 256;

 rclk = params_rate(params) * rfs;

 ret = snd_soc_dai_set_sysclk(cpu_dai, SAMSUNG_I2S_CDCLK,
     0, SND_SOC_CLOCK_OUT);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_sysclk(cpu_dai, SAMSUNG_I2S_RCLKSRC_0,
     0, SND_SOC_CLOCK_OUT);

 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, 0, rclk, SND_SOC_CLOCK_OUT);
 if (ret < 0)
  return ret;

 return 0;
}
