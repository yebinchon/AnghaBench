
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int (* cache_sync ) (struct device*,void*,size_t,int) ;} ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int arch_dma_cache_sync (struct device*,void*,size_t,int) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 int stub1 (struct device*,void*,size_t,int) ;
 int valid_dma_direction (int) ;

void dma_cache_sync(struct device *dev, void *vaddr, size_t size,
  enum dma_data_direction dir)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 BUG_ON(!valid_dma_direction(dir));

 if (dma_is_direct(ops))
  arch_dma_cache_sync(dev, vaddr, size, dir);
 else if (ops->cache_sync)
  ops->cache_sync(dev, vaddr, size, dir);
}
