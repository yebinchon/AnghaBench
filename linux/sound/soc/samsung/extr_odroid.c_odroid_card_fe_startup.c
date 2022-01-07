
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int snd_pcm_hw_constraint_single (struct snd_pcm_runtime*,int ,int) ;

__attribute__((used)) static int odroid_card_fe_startup(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_pcm_hw_constraint_single(runtime, SNDRV_PCM_HW_PARAM_CHANNELS, 2);

 return 0;
}
