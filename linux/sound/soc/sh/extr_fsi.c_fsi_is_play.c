
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int fsi_is_play(struct snd_pcm_substream *substream)
{
 return substream->stream == SNDRV_PCM_STREAM_PLAYBACK;
}
