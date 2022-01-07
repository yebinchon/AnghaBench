
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct sirf_usp {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;






 int sirf_usp_rx_disable (struct sirf_usp*) ;
 int sirf_usp_rx_enable (struct sirf_usp*) ;
 int sirf_usp_tx_disable (struct sirf_usp*) ;
 int sirf_usp_tx_enable (struct sirf_usp*) ;
 struct sirf_usp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int sirf_usp_pcm_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct sirf_usp *usp = snd_soc_dai_get_drvdata(dai);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   sirf_usp_tx_enable(usp);
  else
   sirf_usp_rx_enable(usp);
  break;
 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
   sirf_usp_tx_disable(usp);
  else
   sirf_usp_rx_disable(usp);
  break;
 }

 return 0;
}
