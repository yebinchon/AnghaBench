
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; int runtime; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_capture_avail (int ) ;
 int snd_pcm_playback_avail (int ) ;

__attribute__((used)) static inline snd_pcm_uframes_t
snd_pcm_avail(struct snd_pcm_substream *substream)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return snd_pcm_playback_avail(substream->runtime);
 else
  return snd_pcm_capture_avail(substream->runtime);
}
