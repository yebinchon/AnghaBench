
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {scalar_t__ dma_bytes; } ;


 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int uniphier_aiodma_hw_free(struct snd_pcm_substream *substream)
{
 snd_pcm_set_runtime_buffer(substream, ((void*)0));
 substream->runtime->dma_bytes = 0;

 return 0;
}
