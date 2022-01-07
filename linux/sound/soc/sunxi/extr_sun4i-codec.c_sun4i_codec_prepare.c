
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int sun4i_codec_prepare_capture (struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int sun4i_codec_prepare_playback (struct snd_pcm_substream*,struct snd_soc_dai*) ;

__attribute__((used)) static int sun4i_codec_prepare(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  return sun4i_codec_prepare_playback(substream, dai);

 return sun4i_codec_prepare_capture(substream, dai);
}
