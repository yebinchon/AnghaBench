
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int hw_constraints_rates ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;

__attribute__((used)) static int snd_cs4231_xrate(struct snd_pcm_runtime *runtime)
{
 return snd_pcm_hw_constraint_list(runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &hw_constraints_rates);
}
