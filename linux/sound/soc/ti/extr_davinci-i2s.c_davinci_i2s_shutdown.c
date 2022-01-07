
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct davinci_mcbsp_dev {int dummy; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int davinci_mcbsp_stop (struct davinci_mcbsp_dev*,int) ;
 struct davinci_mcbsp_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void davinci_i2s_shutdown(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct davinci_mcbsp_dev *dev = snd_soc_dai_get_drvdata(dai);
 int playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 davinci_mcbsp_stop(dev, playback);
}
