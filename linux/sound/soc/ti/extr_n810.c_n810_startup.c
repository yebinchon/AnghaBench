
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_2__ {int dapm; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int clk_prepare_enable (int ) ;
 int n810_ext_control (int *) ;
 int snd_pcm_hw_constraint_single (struct snd_pcm_runtime*,int ,int) ;
 int sys_clkout2 ;

__attribute__((used)) static int n810_startup(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;

 snd_pcm_hw_constraint_single(runtime, SNDRV_PCM_HW_PARAM_CHANNELS, 2);

 n810_ext_control(&rtd->card->dapm);
 return clk_prepare_enable(sys_clkout2);
}
