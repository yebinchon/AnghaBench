
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_dma_buffer {int * area; int addr; int bytes; } ;
struct snd_pcm_substream {struct snd_dma_buffer dma_buffer; } ;
struct snd_pcm {TYPE_2__* card; TYPE_1__* streams; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int dma_free_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static void cygnus_dma_free_dma_buffers(struct snd_pcm *pcm)
{
 struct snd_pcm_substream *substream;
 struct snd_dma_buffer *buf;

 substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
 if (substream) {
  buf = &substream->dma_buffer;
  if (buf->area) {
   dma_free_coherent(pcm->card->dev, buf->bytes,
    buf->area, buf->addr);
   buf->area = ((void*)0);
  }
 }

 substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
 if (substream) {
  buf = &substream->dma_buffer;
  if (buf->area) {
   dma_free_coherent(pcm->card->dev, buf->bytes,
    buf->area, buf->addr);
   buf->area = ((void*)0);
  }
 }
}
