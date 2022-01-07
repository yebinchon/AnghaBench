
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* cpu_dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct camelot_pcm {int txid; int * tx_ss; int * rx_ss; } ;
struct TYPE_2__ {size_t id; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 struct camelot_pcm* cam_pcm_data ;
 int dmabrg_free_irq (int) ;

__attribute__((used)) static int camelot_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct camelot_pcm *cam = &cam_pcm_data[rtd->cpu_dai->id];
 int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;
 int dmairq;

 dmairq = (recv) ? cam->txid + 2 : cam->txid;

 if (recv)
  cam->rx_ss = ((void*)0);
 else
  cam->tx_ss = ((void*)0);

 dmabrg_free_irq(dmairq + 1);
 dmabrg_free_irq(dmairq);

 return 0;
}
