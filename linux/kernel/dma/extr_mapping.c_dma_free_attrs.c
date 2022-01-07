
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int (* free ) (struct device*,size_t,void*,int ,unsigned long) ;} ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int WARN_ON (int ) ;
 int debug_dma_free_coherent (struct device*,size_t,void*,int ) ;
 int dma_direct_free (struct device*,size_t,void*,int ,unsigned long) ;
 scalar_t__ dma_is_direct (struct dma_map_ops const*) ;
 scalar_t__ dma_release_from_dev_coherent (struct device*,int ,void*) ;
 struct dma_map_ops* get_dma_ops (struct device*) ;
 int get_order (size_t) ;
 int irqs_disabled () ;
 int stub1 (struct device*,size_t,void*,int ,unsigned long) ;

void dma_free_attrs(struct device *dev, size_t size, void *cpu_addr,
  dma_addr_t dma_handle, unsigned long attrs)
{
 const struct dma_map_ops *ops = get_dma_ops(dev);

 if (dma_release_from_dev_coherent(dev, get_order(size), cpu_addr))
  return;







 WARN_ON(irqs_disabled());

 if (!cpu_addr)
  return;

 debug_dma_free_coherent(dev, size, cpu_addr, dma_handle);
 if (dma_is_direct(ops))
  dma_direct_free(dev, size, cpu_addr, dma_handle, attrs);
 else if (ops->free)
  ops->free(dev, size, cpu_addr, dma_handle, attrs);
}
