
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {unsigned long (* get_merge_boundary ) (struct device*) ;} ;
struct device {int dummy; } ;


 struct dma_map_ops* get_dma_ops (struct device*) ;
 unsigned long stub1 (struct device*) ;

unsigned long dma_get_merge_boundary(struct device *dev)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 if (!ops || !ops->get_merge_boundary)
  return 0;

 return ops->get_merge_boundary(dev);
}
