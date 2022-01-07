
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int runtime; } ;
struct TYPE_2__ {scalar_t__ count; } ;
struct sigmadsp {TYPE_1__ rate_constraints; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,TYPE_1__*) ;

int sigmadsp_restrict_params(struct sigmadsp *sigmadsp,
 struct snd_pcm_substream *substream)
{
 if (sigmadsp->rate_constraints.count == 0)
  return 0;

 return snd_pcm_hw_constraint_list(substream->runtime, 0,
  SNDRV_PCM_HW_PARAM_RATE, &sigmadsp->rate_constraints);
}
