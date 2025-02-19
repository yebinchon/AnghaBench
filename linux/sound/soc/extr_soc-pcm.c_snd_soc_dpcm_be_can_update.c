
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dpcm; } ;
struct TYPE_2__ {scalar_t__ runtime_update; } ;


 scalar_t__ SND_SOC_DPCM_UPDATE_BE ;
 scalar_t__ SND_SOC_DPCM_UPDATE_FE ;

int snd_soc_dpcm_be_can_update(struct snd_soc_pcm_runtime *fe,
  struct snd_soc_pcm_runtime *be, int stream)
{
 if ((fe->dpcm[stream].runtime_update == SND_SOC_DPCM_UPDATE_FE) ||
    ((fe->dpcm[stream].runtime_update == SND_SOC_DPCM_UPDATE_BE) &&
    be->dpcm[stream].runtime_update))
  return 1;
 return 0;
}
