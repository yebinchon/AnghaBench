
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct fsl_esai {int * channels; } ;
struct TYPE_2__ {int channels; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int fsl_esai_trigger_start (struct fsl_esai*,int) ;
 int fsl_esai_trigger_stop (struct fsl_esai*,int) ;
 struct fsl_esai* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_esai_trigger(struct snd_pcm_substream *substream, int cmd,
       struct snd_soc_dai *dai)
{
 struct fsl_esai *esai_priv = snd_soc_dai_get_drvdata(dai);
 bool tx = substream->stream == SNDRV_PCM_STREAM_PLAYBACK;

 esai_priv->channels[tx] = substream->runtime->channels;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  fsl_esai_trigger_start(esai_priv, tx);
  break;
 case 128:
 case 129:
 case 133:
  fsl_esai_trigger_stop(esai_priv, tx);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
