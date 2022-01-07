
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
struct davinci_mcasp {int dummy; } ;
typedef int snd_pcm_sframes_t ;
struct TYPE_2__ {int channels; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int davinci_mcasp_rx_delay (struct davinci_mcasp*) ;
 int davinci_mcasp_tx_delay (struct davinci_mcasp*) ;
 struct davinci_mcasp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static snd_pcm_sframes_t davinci_mcasp_delay(
   struct snd_pcm_substream *substream,
   struct snd_soc_dai *cpu_dai)
{
 struct davinci_mcasp *mcasp = snd_soc_dai_get_drvdata(cpu_dai);
 u32 fifo_use;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  fifo_use = davinci_mcasp_tx_delay(mcasp);
 else
  fifo_use = davinci_mcasp_rx_delay(mcasp);






 return fifo_use / substream->runtime->channels;
}
