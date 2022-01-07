
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_single (int ,int ,int) ;

__attribute__((used)) static int byt_cht_es8316_aif1_startup(struct snd_pcm_substream *substream)
{
 return snd_pcm_hw_constraint_single(substream->runtime,
   SNDRV_PCM_HW_PARAM_RATE, 48000);
}
