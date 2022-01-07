
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct omap_mcbsp {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ buffer_size; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int omap_mcbsp_set_rx_threshold (struct omap_mcbsp*,int) ;
 int omap_mcbsp_set_tx_threshold (struct omap_mcbsp*,int) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void omap_mcbsp_set_threshold(struct snd_pcm_substream *substream,
  unsigned int packet_size)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);
 int words;


 if (mcbsp->pdata->buffer_size == 0)
  return;







 if (packet_size)
  words = packet_size;
 else
  words = 1;


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  omap_mcbsp_set_tx_threshold(mcbsp, words);
 else
  omap_mcbsp_set_rx_threshold(mcbsp, words);
}
