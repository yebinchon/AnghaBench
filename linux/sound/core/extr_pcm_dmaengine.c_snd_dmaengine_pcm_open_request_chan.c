
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
typedef int dma_filter_fn ;


 int snd_dmaengine_pcm_open (struct snd_pcm_substream*,int ) ;
 int snd_dmaengine_pcm_request_channel (int ,void*) ;

int snd_dmaengine_pcm_open_request_chan(struct snd_pcm_substream *substream,
 dma_filter_fn filter_fn, void *filter_data)
{
 return snd_dmaengine_pcm_open(substream,
      snd_dmaengine_pcm_request_channel(filter_fn, filter_data));
}
