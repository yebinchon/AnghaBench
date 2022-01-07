
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_stream {int channels_min; } ;
struct snd_soc_dai {TYPE_1__* driver; } ;
struct TYPE_2__ {struct snd_soc_pcm_stream capture; struct snd_soc_pcm_stream playback; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;

bool snd_soc_dai_stream_valid(struct snd_soc_dai *dai, int dir)
{
 struct snd_soc_pcm_stream *stream;

 if (dir == SNDRV_PCM_STREAM_PLAYBACK)
  stream = &dai->driver->playback;
 else
  stream = &dai->driver->capture;


 return stream->channels_min;
}
