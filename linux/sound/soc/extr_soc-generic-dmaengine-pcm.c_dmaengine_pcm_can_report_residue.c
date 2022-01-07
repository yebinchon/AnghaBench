
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_caps {scalar_t__ residue_granularity; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ DMA_RESIDUE_GRANULARITY_DESCRIPTOR ;
 int dev_warn (struct device*,char*,int) ;
 int dma_get_slave_caps (struct dma_chan*,struct dma_slave_caps*) ;

__attribute__((used)) static bool dmaengine_pcm_can_report_residue(struct device *dev,
 struct dma_chan *chan)
{
 struct dma_slave_caps dma_caps;
 int ret;

 ret = dma_get_slave_caps(chan, &dma_caps);
 if (ret != 0) {
  dev_warn(dev, "Failed to get DMA channel capabilities, falling back to period counting: %d\n",
    ret);
  return 0;
 }

 if (dma_caps.residue_granularity == DMA_RESIDUE_GRANULARITY_DESCRIPTOR)
  return 0;

 return 1;
}
