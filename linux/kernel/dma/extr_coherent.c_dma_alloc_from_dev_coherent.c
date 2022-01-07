
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int dma_addr_t ;


 void* __dma_alloc_from_coherent (struct dma_coherent_mem*,int ,int *) ;
 struct dma_coherent_mem* dev_get_coherent_memory (struct device*) ;

int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
  dma_addr_t *dma_handle, void **ret)
{
 struct dma_coherent_mem *mem = dev_get_coherent_memory(dev);

 if (!mem)
  return 0;

 *ret = __dma_alloc_from_coherent(mem, size, dma_handle);
 return 1;
}
