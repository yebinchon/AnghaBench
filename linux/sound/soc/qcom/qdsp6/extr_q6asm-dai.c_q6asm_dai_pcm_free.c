
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; int * area; } ;
struct snd_pcm_substream {TYPE_1__ dma_buffer; } ;
struct snd_pcm {TYPE_2__* streams; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static void q6asm_dai_pcm_free(struct snd_pcm *pcm)
{
 struct snd_pcm_substream *substream;
 int i;

 for (i = 0; i < ARRAY_SIZE(pcm->streams); i++) {
  substream = pcm->streams[i].substream;
  if (substream) {
   snd_dma_free_pages(&substream->dma_buffer);
   substream->dma_buffer.area = ((void*)0);
   substream->dma_buffer.addr = 0;
  }
 }
}
