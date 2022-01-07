
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sspa_priv {int running_cnt; struct ssp_device* sspa; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int mmp_sspa_rx_disable (struct ssp_device*) ;
 int mmp_sspa_rx_enable (struct ssp_device*) ;
 int mmp_sspa_tx_disable (struct ssp_device*) ;
 int mmp_sspa_tx_enable (struct ssp_device*) ;
 struct sspa_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mmp_sspa_trigger(struct snd_pcm_substream *substream, int cmd,
        struct snd_soc_dai *dai)
{
 struct sspa_priv *sspa_priv = snd_soc_dai_get_drvdata(dai);
 struct ssp_device *sspa = sspa_priv->sspa;
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:






  if (!sspa_priv->running_cnt)
   mmp_sspa_rx_enable(sspa);

  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   mmp_sspa_tx_enable(sspa);

  sspa_priv->running_cnt++;
  break;

 case 129:
 case 128:
 case 133:
  sspa_priv->running_cnt--;

  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   mmp_sspa_tx_disable(sspa);


  if (!sspa_priv->running_cnt)
   mmp_sspa_rx_disable(sspa);
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
