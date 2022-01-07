
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {TYPE_1__* status; int tsleep; int sleep; } ;
struct TYPE_2__ {int state; } ;


 int SNDRV_PCM_STATE_PAUSED ;
 int SNDRV_PCM_STATE_RUNNING ;
 int SNDRV_TIMER_EVENT_MCONTINUE ;
 int SNDRV_TIMER_EVENT_MPAUSE ;
 int snd_pcm_timer_notify (struct snd_pcm_substream*,int ) ;
 int snd_pcm_trigger_tstamp (struct snd_pcm_substream*) ;
 int wake_up (int *) ;

__attribute__((used)) static void snd_pcm_post_pause(struct snd_pcm_substream *substream, int push)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_trigger_tstamp(substream);
 if (push) {
  runtime->status->state = SNDRV_PCM_STATE_PAUSED;
  snd_pcm_timer_notify(substream, SNDRV_TIMER_EVENT_MPAUSE);
  wake_up(&runtime->sleep);
  wake_up(&runtime->tsleep);
 } else {
  runtime->status->state = SNDRV_PCM_STATE_RUNNING;
  snd_pcm_timer_notify(substream, SNDRV_TIMER_EVENT_MCONTINUE);
 }
}
