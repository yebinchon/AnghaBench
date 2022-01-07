
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_dev {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 struct sun4i_spdif_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int sun4i_snd_txctrl_off (struct snd_pcm_substream*,struct sun4i_spdif_dev*) ;
 int sun4i_snd_txctrl_on (struct snd_pcm_substream*,struct sun4i_spdif_dev*) ;

__attribute__((used)) static int sun4i_spdif_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 int ret = 0;
 struct sun4i_spdif_dev *host = snd_soc_dai_get_drvdata(dai);

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return -EINVAL;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  sun4i_snd_txctrl_on(substream, host);
  break;

 case 129:
 case 128:
 case 133:
  sun4i_snd_txctrl_off(substream, host);
  break;

 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
