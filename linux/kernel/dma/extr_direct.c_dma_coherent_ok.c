
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int bus_dma_mask; int coherent_dma_mask; } ;
typedef int phys_addr_t ;


 size_t min_not_zero (int ,int ) ;
 size_t phys_to_dma_direct (struct device*,int ) ;

__attribute__((used)) static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
{
 return phys_to_dma_direct(dev, phys) + size - 1 <=
   min_not_zero(dev->coherent_dma_mask, dev->bus_dma_mask);
}
