
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct omap_mcbsp {TYPE_2__* pdata; } ;
typedef int snd_pcm_sframes_t ;
struct TYPE_4__ {scalar_t__ buffer_size; } ;
struct TYPE_3__ {int channels; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int omap_mcbsp_get_rx_delay (struct omap_mcbsp*) ;
 int omap_mcbsp_get_tx_delay (struct omap_mcbsp*) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static snd_pcm_sframes_t omap_mcbsp_dai_delay(
   struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);
 u16 fifo_use;
 snd_pcm_sframes_t delay;


 if (mcbsp->pdata->buffer_size == 0)
  return 0;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  fifo_use = omap_mcbsp_get_tx_delay(mcbsp);
 else
  fifo_use = omap_mcbsp_get_rx_delay(mcbsp);






 delay = fifo_use / substream->runtime->channels;

 return delay;
}
