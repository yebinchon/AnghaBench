
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_pcm_dma_private {struct sprd_pcm_dma_data* data; } ;
struct sprd_pcm_dma_data {int * chan; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct sprd_pcm_dma_private* private_data; } ;


 int SPRD_PCM_CHANNEL_MAX ;
 int dma_release_channel (int *) ;

__attribute__((used)) static void sprd_pcm_release_dma_channel(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct sprd_pcm_dma_private *dma_private = runtime->private_data;
 int i;

 for (i = 0; i < SPRD_PCM_CHANNEL_MAX; i++) {
  struct sprd_pcm_dma_data *data = &dma_private->data[i];

  if (data->chan) {
   dma_release_channel(data->chan);
   data->chan = ((void*)0);
  }
 }
}
