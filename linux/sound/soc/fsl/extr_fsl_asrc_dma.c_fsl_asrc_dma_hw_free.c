
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {int ** dma_chan; } ;


 size_t IN ;
 size_t OUT ;
 int dma_release_channel (int *) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int fsl_asrc_dma_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;

 snd_pcm_set_runtime_buffer(substream, ((void*)0));

 if (pair->dma_chan[IN])
  dma_release_channel(pair->dma_chan[IN]);

 if (pair->dma_chan[OUT])
  dma_release_channel(pair->dma_chan[OUT]);

 pair->dma_chan[IN] = ((void*)0);
 pair->dma_chan[OUT] = ((void*)0);

 return 0;
}
