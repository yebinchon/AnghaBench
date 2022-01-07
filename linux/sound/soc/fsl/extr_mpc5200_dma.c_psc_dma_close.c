
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {TYPE_1__* pstr; struct snd_soc_pcm_runtime* private_data; } ;
struct psc_dma_stream {int * stream; int active; } ;
struct psc_dma {TYPE_3__* psc_regs; int imr; struct psc_dma_stream capture; struct psc_dma_stream playback; int dev; } ;
struct TYPE_5__ {int imr; } ;
struct TYPE_6__ {int command; TYPE_2__ isr_imr; } ;
struct TYPE_4__ {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int dev_dbg (int ,char*,struct snd_pcm_substream*) ;
 int out_8 (int *,int) ;
 int out_be16 (int *,int ) ;
 struct psc_dma* snd_soc_dai_get_drvdata (int ) ;

__attribute__((used)) static int psc_dma_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct psc_dma *psc_dma = snd_soc_dai_get_drvdata(rtd->cpu_dai);
 struct psc_dma_stream *s;

 dev_dbg(psc_dma->dev, "psc_dma_close(substream=%p)\n", substream);

 if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
  s = &psc_dma->capture;
 else
  s = &psc_dma->playback;

 if (!psc_dma->playback.active &&
     !psc_dma->capture.active) {


  out_be16(&psc_dma->psc_regs->isr_imr.imr, psc_dma->imr);
  out_8(&psc_dma->psc_regs->command, 4 << 4);
 }
 s->stream = ((void*)0);
 return 0;
}
