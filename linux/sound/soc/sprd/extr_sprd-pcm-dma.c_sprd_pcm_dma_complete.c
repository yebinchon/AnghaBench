
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pcm_dma_private {struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void sprd_pcm_dma_complete(void *data)
{
 struct sprd_pcm_dma_private *dma_private = data;
 struct snd_pcm_substream *substream = dma_private->substream;

 snd_pcm_period_elapsed(substream);
}
