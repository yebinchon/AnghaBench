
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_map_ops {int (* get_required_mask ) (struct device*) ;} ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int dma_direct_get_required_mask (struct device*) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 int stub1 (struct device*) ;

u64 dma_get_required_mask(struct device *dev)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 if (dma_is_direct(ops))
  return dma_direct_get_required_mask(dev);
 if (ops->get_required_mask)
  return ops->get_required_mask(dev);
 return DMA_BIT_MASK(32);
}
