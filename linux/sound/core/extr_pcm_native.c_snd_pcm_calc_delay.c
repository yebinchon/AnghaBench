
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
struct TYPE_3__ {scalar_t__ delay; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_pcm_capture_avail (TYPE_1__*) ;
 scalar_t__ snd_pcm_playback_hw_avail (TYPE_1__*) ;

__attribute__((used)) static inline snd_pcm_uframes_t
snd_pcm_calc_delay(struct snd_pcm_substream *substream)
{
 snd_pcm_uframes_t delay;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  delay = snd_pcm_playback_hw_avail(substream->runtime);
 else
  delay = snd_pcm_capture_avail(substream->runtime);
 return delay + substream->runtime->delay;
}
