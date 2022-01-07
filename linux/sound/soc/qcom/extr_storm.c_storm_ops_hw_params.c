
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int cpu_dai; struct snd_soc_card* card; } ;
struct snd_soc_card {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef int snd_pcm_format_t ;


 unsigned int STORM_SYSCLK_MULT ;
 int dev_err (int ,char*,unsigned int,...) ;
 int params_format (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_pcm_format_width (int ) ;
 int snd_soc_dai_set_sysclk (int ,int ,unsigned int,int ) ;

__attribute__((used)) static int storm_ops_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *soc_runtime = substream->private_data;
 struct snd_soc_card *card = soc_runtime->card;
 snd_pcm_format_t format = params_format(params);
 unsigned int rate = params_rate(params);
 unsigned int sysclk_freq;
 int bitwidth, ret;

 bitwidth = snd_pcm_format_width(format);
 if (bitwidth < 0) {
  dev_err(card->dev, "invalid bit width given: %d\n", bitwidth);
  return bitwidth;
 }






 sysclk_freq = rate * bitwidth * 2 * STORM_SYSCLK_MULT;

 ret = snd_soc_dai_set_sysclk(soc_runtime->cpu_dai, 0, sysclk_freq, 0);
 if (ret) {
  dev_err(card->dev, "error setting sysclk to %u: %d\n",
   sysclk_freq, ret);
  return ret;
 }

 return 0;
}
