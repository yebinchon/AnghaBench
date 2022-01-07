
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; int * area; } ;
struct snd_pcm_substream {TYPE_2__ dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_PCM_STREAM_LAST ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_dma_free_pages (TYPE_2__*) ;

__attribute__((used)) static void fsl_asrc_dma_pcm_free(struct snd_pcm *pcm)
{
 struct snd_pcm_substream *substream;
 int i;

 for (i = SNDRV_PCM_STREAM_PLAYBACK; i <= SNDRV_PCM_STREAM_LAST; i++) {
  substream = pcm->streams[i].substream;
  if (!substream)
   continue;

  snd_dma_free_pages(&substream->dma_buffer);
  substream->dma_buffer.area = ((void*)0);
  substream->dma_buffer.addr = 0;
 }
}
