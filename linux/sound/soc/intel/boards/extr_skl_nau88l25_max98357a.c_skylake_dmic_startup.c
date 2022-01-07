
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;


 int DMIC_CH (int *) ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int constraints_rates ;
 int * dmic_constraints ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;

__attribute__((used)) static int skylake_dmic_startup(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->hw.channels_max = DMIC_CH(dmic_constraints);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
   dmic_constraints);

 return snd_pcm_hw_constraint_list(substream->runtime, 0,
   SNDRV_PCM_HW_PARAM_RATE, &constraints_rates);
}
