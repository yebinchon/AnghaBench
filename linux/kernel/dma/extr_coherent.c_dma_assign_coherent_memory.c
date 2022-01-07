
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int dummy; } ;
struct device {struct dma_coherent_mem* dma_mem; } ;


 int EBUSY ;
 int ENODEV ;

__attribute__((used)) static int dma_assign_coherent_memory(struct device *dev,
          struct dma_coherent_mem *mem)
{
 if (!dev)
  return -ENODEV;

 if (dev->dma_mem)
  return -EBUSY;

 dev->dma_mem = mem;
 return 0;
}
