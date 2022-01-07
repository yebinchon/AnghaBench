
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; struct sst_dma* dma; } ;
struct sst_dma {int * ch; } ;
struct dma_slave_config {int dst_maxburst; int src_maxburst; int dst_addr_width; int src_addr_width; int direction; } ;
typedef int slave ;
typedef int dma_cap_mask_t ;


 int DMA_MEMCPY ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EIO ;
 int SST_DSP_DMA_MAX_BURST ;
 int dev_err (int ,char*,...) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_chan_filter ;
 int dma_release_channel (int *) ;
 int * dma_request_channel (int ,int ,struct sst_dsp*) ;
 int dmaengine_slave_config (int *,struct dma_slave_config*) ;
 int memset (struct dma_slave_config*,int ,int) ;

int sst_dsp_dma_get_channel(struct sst_dsp *dsp, int chan_id)
{
 struct sst_dma *dma = dsp->dma;
 struct dma_slave_config slave;
 dma_cap_mask_t mask;
 int ret;

 dma_cap_zero(mask);
 dma_cap_set(DMA_SLAVE, mask);
 dma_cap_set(DMA_MEMCPY, mask);

 dma->ch = dma_request_channel(mask, dma_chan_filter, dsp);
 if (dma->ch == ((void*)0)) {
  dev_err(dsp->dev, "error: DMA request channel failed\n");
  return -EIO;
 }

 memset(&slave, 0, sizeof(slave));
 slave.direction = DMA_MEM_TO_DEV;
 slave.src_addr_width =
  slave.dst_addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 slave.src_maxburst = slave.dst_maxburst = SST_DSP_DMA_MAX_BURST;

 ret = dmaengine_slave_config(dma->ch, &slave);
 if (ret) {
  dev_err(dsp->dev, "error: unable to set DMA slave config %d\n",
   ret);
  dma_release_channel(dma->ch);
  dma->ch = ((void*)0);
 }

 return ret;
}
