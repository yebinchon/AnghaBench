
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * area; } ;
struct snd_pcm_substream {TYPE_1__ dma_buffer; } ;


 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static void snd_pcm_lib_preallocate_dma_free(struct snd_pcm_substream *substream)
{
 if (substream->dma_buffer.area == ((void*)0))
  return;
 snd_dma_free_pages(&substream->dma_buffer);
 substream->dma_buffer.area = ((void*)0);
}
