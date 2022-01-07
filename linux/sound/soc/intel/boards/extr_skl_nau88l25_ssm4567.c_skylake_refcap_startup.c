
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_3__ {int channels_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int constraints_16000 ;
 int constraints_refcap ;
 int snd_pcm_hw_constraint_list (TYPE_2__*,int ,int ,int *) ;

__attribute__((used)) static int skylake_refcap_startup(struct snd_pcm_substream *substream)
{
 substream->runtime->hw.channels_max = 1;
 snd_pcm_hw_constraint_list(substream->runtime, 0,
     SNDRV_PCM_HW_PARAM_CHANNELS,
     &constraints_refcap);

 return snd_pcm_hw_constraint_list(substream->runtime, 0,
   SNDRV_PCM_HW_PARAM_RATE,
   &constraints_16000);
}
