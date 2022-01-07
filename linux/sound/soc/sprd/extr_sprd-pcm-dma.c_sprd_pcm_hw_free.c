
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;
 int sprd_pcm_release_dma_channel (struct snd_pcm_substream*) ;

__attribute__((used)) static int sprd_pcm_hw_free(struct snd_pcm_substream *substream)
{
 snd_pcm_set_runtime_buffer(substream, ((void*)0));
 sprd_pcm_release_dma_channel(substream);

 return 0;
}
