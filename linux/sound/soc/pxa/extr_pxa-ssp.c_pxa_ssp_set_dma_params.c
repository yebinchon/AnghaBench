
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {scalar_t__ phys_base; } ;
struct snd_dmaengine_dai_dma_data {int maxburst; scalar_t__ addr; int addr_width; } ;


 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 scalar_t__ SSDR ;

__attribute__((used)) static void pxa_ssp_set_dma_params(struct ssp_device *ssp, int width4,
   int out, struct snd_dmaengine_dai_dma_data *dma)
{
 dma->addr_width = width4 ? DMA_SLAVE_BUSWIDTH_4_BYTES :
       DMA_SLAVE_BUSWIDTH_2_BYTES;
 dma->maxburst = 16;
 dma->addr = ssp->phys_base + SSDR;
}
