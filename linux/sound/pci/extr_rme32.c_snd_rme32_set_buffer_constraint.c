
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct rme32 {int fullduplex_mode; } ;


 int RME32_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int hw_constraints_period_bytes ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_single (struct snd_pcm_runtime*,int ,int ) ;

__attribute__((used)) static void snd_rme32_set_buffer_constraint(struct rme32 *rme32, struct snd_pcm_runtime *runtime)
{
 if (! rme32->fullduplex_mode) {
  snd_pcm_hw_constraint_single(runtime,
          SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
          RME32_BUFFER_SIZE);
  snd_pcm_hw_constraint_list(runtime, 0,
        SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
        &hw_constraints_period_bytes);
 }
}
