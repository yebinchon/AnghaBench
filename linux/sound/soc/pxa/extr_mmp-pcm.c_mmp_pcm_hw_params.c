
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dma_buffer; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int dmaengine_slave_config (struct dma_chan*,struct dma_slave_config*) ;
 struct dma_chan* snd_dmaengine_pcm_get_chan (struct snd_pcm_substream*) ;
 int snd_dmaengine_pcm_prepare_slave_config (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct dma_slave_config*) ;
 int snd_pcm_set_runtime_buffer (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int mmp_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params)
{
 struct dma_chan *chan = snd_dmaengine_pcm_get_chan(substream);
 struct dma_slave_config slave_config;
 int ret;

 ret =
     snd_dmaengine_pcm_prepare_slave_config(substream, params,
         &slave_config);
 if (ret)
  return ret;

 ret = dmaengine_slave_config(chan, &slave_config);
 if (ret)
  return ret;

 snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);

 return 0;
}
