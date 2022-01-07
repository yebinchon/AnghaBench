
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_map_ops {int (* dma_supported ) (struct device*,int ) ;} ;
struct device {int dummy; } ;


 int dma_direct_supported (struct device*,int ) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 int stub1 (struct device*,int ) ;

int dma_supported(struct device *dev, u64 mask)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 if (dma_is_direct(ops))
  return dma_direct_supported(dev, mask);
 if (!ops->dma_supported)
  return 1;
 return ops->dma_supported(dev, mask);
}
