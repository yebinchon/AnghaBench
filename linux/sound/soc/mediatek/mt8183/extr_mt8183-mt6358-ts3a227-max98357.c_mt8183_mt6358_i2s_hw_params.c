
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SND_SOC_CLOCK_OUT ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_sysclk (int ,int ,unsigned int,int ) ;

__attribute__((used)) static int mt8183_mt6358_i2s_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 unsigned int rate = params_rate(params);
 unsigned int mclk_fs_ratio = 128;
 unsigned int mclk_fs = rate * mclk_fs_ratio;

 return snd_soc_dai_set_sysclk(rtd->cpu_dai,
          0, mclk_fs, SND_SOC_CLOCK_OUT);
}
