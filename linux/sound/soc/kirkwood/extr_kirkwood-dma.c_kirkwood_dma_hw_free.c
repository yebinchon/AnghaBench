
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int kirkwood_dma_hw_free(struct snd_pcm_substream *substream)
{
 snd_pcm_set_runtime_buffer(substream, ((void*)0));
 return 0;
}
