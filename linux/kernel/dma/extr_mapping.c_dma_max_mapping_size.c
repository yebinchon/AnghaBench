
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {size_t (* max_mapping_size ) (struct device*) ;} ;
struct device {int dummy; } ;


 size_t SIZE_MAX ;
 size_t dma_direct_max_mapping_size (struct device*) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 size_t stub1 (struct device*) ;

size_t dma_max_mapping_size(struct device *dev)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);
 size_t size = SIZE_MAX;

 if (dma_is_direct(ops))
  size = dma_direct_max_mapping_size(dev);
 else if (ops && ops->max_mapping_size)
  size = ops->max_mapping_size(dev);

 return size;
}
