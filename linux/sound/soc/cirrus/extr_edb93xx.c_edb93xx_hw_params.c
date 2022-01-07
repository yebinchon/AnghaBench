
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SND_SOC_CLOCK_IN ;
 int SND_SOC_CLOCK_OUT ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int edb93xx_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 int err;
 unsigned int mclk_rate;
 unsigned int rate = params_rate(params);





 if (rate < 50000)
  mclk_rate = rate * 64 * 4;
 else
  mclk_rate = rate * 64 * 2;

 err = snd_soc_dai_set_sysclk(codec_dai, 0, mclk_rate,
         SND_SOC_CLOCK_IN);
 if (err)
  return err;

 return snd_soc_dai_set_sysclk(cpu_dai, 0, mclk_rate,
          SND_SOC_CLOCK_OUT);
}
