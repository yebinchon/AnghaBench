
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rates; int rate_max; int rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_ice1712 {TYPE_2__* hw_rates; } ;
struct TYPE_4__ {int count; int * list; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_RATE_KNOT ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,TYPE_2__*) ;

__attribute__((used)) static int set_rate_constraints(struct snd_ice1712 *ice,
    struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->hw.rate_min = ice->hw_rates->list[0];
 runtime->hw.rate_max = ice->hw_rates->list[ice->hw_rates->count - 1];
 runtime->hw.rates = SNDRV_PCM_RATE_KNOT;
 return snd_pcm_hw_constraint_list(runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       ice->hw_rates);
}
