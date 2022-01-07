
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int snd_pcm_hw_constraint_minmax (int ,int ,int,int) ;

__attribute__((used)) static int rk_aif1_startup(struct snd_pcm_substream *substream)
{




 return snd_pcm_hw_constraint_minmax(substream->runtime,
   SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 240, 240);
}
