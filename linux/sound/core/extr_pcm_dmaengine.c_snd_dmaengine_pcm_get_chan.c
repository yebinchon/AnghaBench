
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct dmaengine_pcm_runtime_data {struct dma_chan* dma_chan; } ;
struct dma_chan {int dummy; } ;


 struct dmaengine_pcm_runtime_data* substream_to_prtd (struct snd_pcm_substream*) ;

struct dma_chan *snd_dmaengine_pcm_get_chan(struct snd_pcm_substream *substream)
{
 struct dmaengine_pcm_runtime_data *prtd = substream_to_prtd(substream);

 return prtd->dma_chan;
}
