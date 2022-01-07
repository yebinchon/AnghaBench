
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int DMA_MAPPING_ERROR ;
 int dma_direct_possible (struct device*,int ,size_t) ;
 int report_addr (struct device*,int ,size_t) ;
 scalar_t__ unlikely (int) ;

dma_addr_t dma_direct_map_resource(struct device *dev, phys_addr_t paddr,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 dma_addr_t dma_addr = paddr;

 if (unlikely(!dma_direct_possible(dev, dma_addr, size))) {
  report_addr(dev, dma_addr, size);
  return DMA_MAPPING_ERROR;
 }

 return dma_addr;
}
