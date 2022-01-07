
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
typedef int dma_filter_fn ;
typedef int dma_cap_mask_t ;


 int DMA_CYCLIC ;
 int DMA_SLAVE ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,void*) ;

struct dma_chan *snd_dmaengine_pcm_request_channel(dma_filter_fn filter_fn,
 void *filter_data)
{
 dma_cap_mask_t mask;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 dma_cap_set(DMA_CYCLIC, mask);

 return dma_request_channel(mask, filter_fn, filter_data);
}
