
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hardware {int info; int periods_min; int period_bytes_min; int channels_max; int period_bytes_max; int buffer_bytes_max; int periods_max; } ;
struct snd_pcm_runtime {struct snd_pcm_hardware hw; } ;
struct amdtp_stream {int flags; } ;


 int CIP_BLOCKING ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_TIME ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_INFO_BATCH ;
 int SNDRV_PCM_INFO_BLOCK_TRANSFER ;
 int SNDRV_PCM_INFO_INTERLEAVED ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int SNDRV_PCM_INFO_MMAP ;
 int SNDRV_PCM_INFO_MMAP_VALID ;
 int UINT_MAX ;
 int apply_constraint_to_size ;
 int snd_pcm_hw_constraint_minmax (struct snd_pcm_runtime*,int ,int,int ) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,int *,int ,int ,int) ;

int amdtp_stream_add_pcm_hw_constraints(struct amdtp_stream *s,
     struct snd_pcm_runtime *runtime)
{
 struct snd_pcm_hardware *hw = &runtime->hw;
 int err;

 hw->info = SNDRV_PCM_INFO_BATCH |
     SNDRV_PCM_INFO_BLOCK_TRANSFER |
     SNDRV_PCM_INFO_INTERLEAVED |
     SNDRV_PCM_INFO_JOINT_DUPLEX |
     SNDRV_PCM_INFO_MMAP |
     SNDRV_PCM_INFO_MMAP_VALID;


 hw->periods_min = 2;
 hw->periods_max = UINT_MAX;


 hw->period_bytes_min = 4 * hw->channels_max;


 hw->period_bytes_max = hw->period_bytes_min * 2048;
 hw->buffer_bytes_max = hw->period_bytes_max * hw->periods_min;
 err = snd_pcm_hw_constraint_minmax(runtime,
        SNDRV_PCM_HW_PARAM_PERIOD_TIME,
        5000, UINT_MAX);
 if (err < 0)
  goto end;


 if (!(s->flags & CIP_BLOCKING))
  goto end;







 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
      apply_constraint_to_size, ((void*)0),
      SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
      SNDRV_PCM_HW_PARAM_RATE, -1);
 if (err < 0)
  goto end;
 err = snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
      apply_constraint_to_size, ((void*)0),
      SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
      SNDRV_PCM_HW_PARAM_RATE, -1);
 if (err < 0)
  goto end;
end:
 return err;
}
