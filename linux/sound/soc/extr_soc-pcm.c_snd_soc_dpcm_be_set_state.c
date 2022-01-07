
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dpcm; } ;
typedef enum snd_soc_dpcm_state { ____Placeholder_snd_soc_dpcm_state } snd_soc_dpcm_state ;
struct TYPE_2__ {int state; } ;



void snd_soc_dpcm_be_set_state(struct snd_soc_pcm_runtime *be,
  int stream, enum snd_soc_dpcm_state state)
{
 be->dpcm[stream].state = state;
}
