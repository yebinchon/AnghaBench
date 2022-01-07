
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {int runtime; TYPE_1__* pstr; struct snd_soc_pcm_runtime* private_data; } ;
struct psc_dma_stream {int period_current; int period_bytes; } ;
struct psc_dma {struct psc_dma_stream playback; struct psc_dma_stream capture; } ;
typedef int snd_pcm_uframes_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int bytes_to_frames (int ,int) ;
 struct psc_dma* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static snd_pcm_uframes_t
psc_dma_pointer(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct psc_dma *psc_dma = snd_soc_dai_get_drvdata(rtd->cpu_dai);
 struct psc_dma_stream *s;
 dma_addr_t count;

 if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
  s = &psc_dma->capture;
 else
  s = &psc_dma->playback;

 count = s->period_current * s->period_bytes;

 return bytes_to_frames(substream->runtime, count);
}
