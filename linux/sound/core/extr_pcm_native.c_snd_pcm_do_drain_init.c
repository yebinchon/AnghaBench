
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_3__* ops; struct snd_pcm_runtime* runtime; } ;
struct TYPE_5__ {int info; } ;
struct snd_pcm_runtime {TYPE_2__ hw; struct snd_pcm_substream* trigger_master; TYPE_1__* status; } ;
struct TYPE_6__ {int (* trigger ) (struct snd_pcm_substream*,int ) ;} ;
struct TYPE_4__ {int state; } ;


 int SNDRV_PCM_INFO_DRAIN_TRIGGER ;
 void* SNDRV_PCM_STATE_DRAINING ;


 void* SNDRV_PCM_STATE_SETUP ;

 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_PCM_TRIGGER_DRAIN ;
 scalar_t__ snd_pcm_capture_avail (struct snd_pcm_runtime*) ;
 int snd_pcm_do_start (struct snd_pcm_substream*,void*) ;
 int snd_pcm_do_stop (struct snd_pcm_substream*,int) ;
 int snd_pcm_playback_empty (struct snd_pcm_substream*) ;
 int snd_pcm_post_start (struct snd_pcm_substream*,void*) ;
 int snd_pcm_post_stop (struct snd_pcm_substream*,int) ;
 int stub1 (struct snd_pcm_substream*,int ) ;

__attribute__((used)) static int snd_pcm_do_drain_init(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  switch (runtime->status->state) {
  case 130:

   if (! snd_pcm_playback_empty(substream)) {
    snd_pcm_do_start(substream, SNDRV_PCM_STATE_DRAINING);
    snd_pcm_post_start(substream, SNDRV_PCM_STATE_DRAINING);
   } else {
    runtime->status->state = SNDRV_PCM_STATE_SETUP;
   }
   break;
  case 129:
   runtime->status->state = SNDRV_PCM_STATE_DRAINING;
   break;
  case 128:
   runtime->status->state = SNDRV_PCM_STATE_SETUP;
   break;
  default:
   break;
  }
 } else {

  if (runtime->status->state == 129) {
   int new_state = snd_pcm_capture_avail(runtime) > 0 ?
    SNDRV_PCM_STATE_DRAINING : SNDRV_PCM_STATE_SETUP;
   snd_pcm_do_stop(substream, new_state);
   snd_pcm_post_stop(substream, new_state);
  }
 }

 if (runtime->status->state == SNDRV_PCM_STATE_DRAINING &&
     runtime->trigger_master == substream &&
     (runtime->hw.info & SNDRV_PCM_INFO_DRAIN_TRIGGER))
  return substream->ops->trigger(substream,
            SNDRV_PCM_TRIGGER_DRAIN);

 return 0;
}
