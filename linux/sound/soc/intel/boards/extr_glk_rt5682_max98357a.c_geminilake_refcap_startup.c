
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int constraints_16000 ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;

__attribute__((used)) static int geminilake_refcap_startup(struct snd_pcm_substream *substream)
{
 return snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE,
    &constraints_16000);
}
