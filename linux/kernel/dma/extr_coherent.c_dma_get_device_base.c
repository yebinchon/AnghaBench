
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_coherent_mem {int pfn_base; int device_base; scalar_t__ use_dev_dma_pfn_offset; } ;
struct device {int dma_pfn_offset; } ;
typedef int dma_addr_t ;


 int PAGE_SHIFT ;

__attribute__((used)) static inline dma_addr_t dma_get_device_base(struct device *dev,
          struct dma_coherent_mem * mem)
{
 if (mem->use_dev_dma_pfn_offset)
  return (mem->pfn_base - dev->dma_pfn_offset) << PAGE_SHIFT;
 else
  return mem->device_base;
}
