
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;
typedef int dma_addr_t ;


 int SST_HSW_MASK_DMA_ADDR_DSP ;
 int sst_dsp_dma_copy (struct sst_dsp*,int,int,size_t) ;

int sst_dsp_dma_copyto(struct sst_dsp *sst, dma_addr_t dest_addr,
 dma_addr_t src_addr, size_t size)
{
 return sst_dsp_dma_copy(sst, dest_addr | SST_HSW_MASK_DMA_ADDR_DSP,
   src_addr, size);
}
