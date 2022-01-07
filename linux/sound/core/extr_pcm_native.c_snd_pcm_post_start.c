
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw_ptr_buffer_jiffies; int buffer_size; int rate; scalar_t__ silence_size; TYPE_1__* status; int hw_ptr_jiffies; } ;
struct TYPE_2__ {int state; } ;


 int HZ ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SNDRV_TIMER_EVENT_MSTART ;
 int ULONG_MAX ;
 int jiffies ;
 int snd_pcm_playback_silence (struct snd_pcm_substream*,int ) ;
 int snd_pcm_timer_notify (struct snd_pcm_substream*,int ) ;
 int snd_pcm_trigger_tstamp (struct snd_pcm_substream*) ;

__attribute__((used)) static void snd_pcm_post_start(struct snd_pcm_substream *substream, int state)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 snd_pcm_trigger_tstamp(substream);
 runtime->hw_ptr_jiffies = jiffies;
 runtime->hw_ptr_buffer_jiffies = (runtime->buffer_size * HZ) /
           runtime->rate;
 runtime->status->state = state;
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK &&
     runtime->silence_size > 0)
  snd_pcm_playback_silence(substream, ULONG_MAX);
 snd_pcm_timer_notify(substream, SNDRV_TIMER_EVENT_MSTART);
}
