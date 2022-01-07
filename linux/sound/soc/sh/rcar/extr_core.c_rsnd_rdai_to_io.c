
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {struct rsnd_dai_stream capture; struct rsnd_dai_stream playback; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static
struct rsnd_dai_stream *rsnd_rdai_to_io(struct rsnd_dai *rdai,
     struct snd_pcm_substream *substream)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return &rdai->playback;
 else
  return &rdai->capture;
}
