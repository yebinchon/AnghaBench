
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ SWIOTLB_FORCE ;
 scalar_t__ dma_capable (struct device*,int ,size_t) ;
 scalar_t__ swiotlb_force ;

__attribute__((used)) static inline bool dma_direct_possible(struct device *dev, dma_addr_t dma_addr,
  size_t size)
{
 return swiotlb_force != SWIOTLB_FORCE &&
  dma_capable(dev, dma_addr, size);
}
