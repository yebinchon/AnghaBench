
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_status {scalar_t__ overrange; scalar_t__ avail_max; int delay; int avail; int hw_ptr; int appl_ptr; int tstamp; int audio_tstamp_accuracy; int audio_tstamp_data; int audio_tstamp; int driver_tstamp; int trigger_tstamp; int state; int suspended_state; } ;
struct TYPE_10__ {int valid; } ;
struct TYPE_9__ {scalar_t__ type_requested; } ;
struct TYPE_6__ {int info; } ;
struct snd_pcm_runtime {scalar_t__ tstamp_mode; scalar_t__ overrange; scalar_t__ avail_max; TYPE_3__* status; TYPE_2__* control; TYPE_5__ audio_tstamp_report; int driver_tstamp; int trigger_tstamp; TYPE_4__ audio_tstamp_config; TYPE_1__ hw; } ;
struct TYPE_8__ {int hw_ptr; int audio_tstamp; int tstamp; int suspended_state; int state; } ;
struct TYPE_7__ {int appl_ptr; } ;


 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_COMPAT ;
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT ;
 scalar_t__ SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK ;
 int SNDRV_PCM_INFO_HAS_WALL_CLOCK ;
 int SNDRV_PCM_STATE_OPEN ;
 scalar_t__ SNDRV_PCM_TSTAMP_ENABLE ;
 int snd_pcm_avail (struct snd_pcm_substream*) ;
 int snd_pcm_calc_delay (struct snd_pcm_substream*) ;
 int snd_pcm_gettime (struct snd_pcm_runtime*,int *) ;
 int snd_pcm_pack_audio_tstamp_report (int *,int *,TYPE_5__*) ;
 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_unpack_audio_tstamp_config (int ,TYPE_4__*) ;
 int snd_pcm_update_hw_ptr (struct snd_pcm_substream*) ;

int snd_pcm_status(struct snd_pcm_substream *substream,
     struct snd_pcm_status *status)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_pcm_stream_lock_irq(substream);

 snd_pcm_unpack_audio_tstamp_config(status->audio_tstamp_data,
     &runtime->audio_tstamp_config);


 if (runtime->audio_tstamp_config.type_requested ==
  SNDRV_PCM_AUDIO_TSTAMP_TYPE_COMPAT) {
  if (runtime->hw.info & SNDRV_PCM_INFO_HAS_WALL_CLOCK)
   runtime->audio_tstamp_config.type_requested =
    SNDRV_PCM_AUDIO_TSTAMP_TYPE_LINK;
  else
   runtime->audio_tstamp_config.type_requested =
    SNDRV_PCM_AUDIO_TSTAMP_TYPE_DEFAULT;
  runtime->audio_tstamp_report.valid = 0;
 } else
  runtime->audio_tstamp_report.valid = 1;

 status->state = runtime->status->state;
 status->suspended_state = runtime->status->suspended_state;
 if (status->state == SNDRV_PCM_STATE_OPEN)
  goto _end;
 status->trigger_tstamp = runtime->trigger_tstamp;
 if (snd_pcm_running(substream)) {
  snd_pcm_update_hw_ptr(substream);
  if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE) {
   status->tstamp = runtime->status->tstamp;
   status->driver_tstamp = runtime->driver_tstamp;
   status->audio_tstamp =
    runtime->status->audio_tstamp;
   if (runtime->audio_tstamp_report.valid == 1)

    snd_pcm_pack_audio_tstamp_report(&status->audio_tstamp_data,
        &status->audio_tstamp_accuracy,
        &runtime->audio_tstamp_report);

   goto _tstamp_end;
  }
 } else {

  if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE)
   snd_pcm_gettime(runtime, &status->tstamp);
 }
 _tstamp_end:
 status->appl_ptr = runtime->control->appl_ptr;
 status->hw_ptr = runtime->status->hw_ptr;
 status->avail = snd_pcm_avail(substream);
 status->delay = snd_pcm_running(substream) ?
  snd_pcm_calc_delay(substream) : 0;
 status->avail_max = runtime->avail_max;
 status->overrange = runtime->overrange;
 runtime->avail_max = 0;
 runtime->overrange = 0;
 _end:
  snd_pcm_stream_unlock_irq(substream);
 return 0;
}
