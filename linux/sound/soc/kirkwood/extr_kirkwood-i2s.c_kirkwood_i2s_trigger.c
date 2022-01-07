
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int kirkwood_i2s_play_trigger (struct snd_pcm_substream*,int,struct snd_soc_dai*) ;
 int kirkwood_i2s_rec_trigger (struct snd_pcm_substream*,int,struct snd_soc_dai*) ;

__attribute__((used)) static int kirkwood_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return kirkwood_i2s_play_trigger(substream, cmd, dai);
 else
  return kirkwood_i2s_rec_trigger(substream, cmd, dai);

 return 0;
}
