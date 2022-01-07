
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 int uniphier_aiodma_hw ;

__attribute__((used)) static int uniphier_aiodma_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_soc_set_runtime_hwparams(substream, &uniphier_aiodma_hw);

 return snd_pcm_hw_constraint_step(runtime, 0,
  SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 256);
}
