
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct dmaengine_pcm_runtime_data {int dma_chan; } ;


 int dma_release_channel (int ) ;
 int dmaengine_synchronize (int ) ;
 int kfree (struct dmaengine_pcm_runtime_data*) ;
 struct dmaengine_pcm_runtime_data* substream_to_prtd (struct snd_pcm_substream*) ;

int snd_dmaengine_pcm_close_release_chan(struct snd_pcm_substream *substream)
{
 struct dmaengine_pcm_runtime_data *prtd = substream_to_prtd(substream);

 dmaengine_synchronize(prtd->dma_chan);
 dma_release_channel(prtd->dma_chan);
 kfree(prtd);

 return 0;
}
