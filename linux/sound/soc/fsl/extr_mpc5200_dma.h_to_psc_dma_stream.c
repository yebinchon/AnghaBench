
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct psc_dma_stream {int dummy; } ;
struct psc_dma {struct psc_dma_stream playback; struct psc_dma_stream capture; } ;
struct TYPE_2__ {scalar_t__ stream; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;

__attribute__((used)) static inline struct psc_dma_stream *
to_psc_dma_stream(struct snd_pcm_substream *substream, struct psc_dma *psc_dma)
{
 if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
  return &psc_dma->capture;
 return &psc_dma->playback;
}
