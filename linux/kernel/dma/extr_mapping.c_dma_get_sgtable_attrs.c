
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct dma_map_ops {int (* get_sgtable ) (struct device*,struct sg_table*,void*,int ,size_t,unsigned long) ;} ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENXIO ;
 int dma_common_get_sgtable (struct device*,struct sg_table*,void*,int ,size_t,unsigned long) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 int stub1 (struct device*,struct sg_table*,void*,int ,size_t,unsigned long) ;

int dma_get_sgtable_attrs(struct device *dev, struct sg_table *sgt,
  void *cpu_addr, dma_addr_t dma_addr, size_t size,
  unsigned long attrs)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 if (dma_is_direct(ops))
  return dma_common_get_sgtable(dev, sgt, cpu_addr, dma_addr,
    size, attrs);
 if (!ops->get_sgtable)
  return -ENXIO;
 return ops->get_sgtable(dev, sgt, cpu_addr, dma_addr, size, attrs);
}
