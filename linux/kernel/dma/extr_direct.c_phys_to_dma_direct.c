
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int __phys_to_dma (struct device*,int ) ;
 scalar_t__ force_dma_unencrypted (struct device*) ;
 int phys_to_dma (struct device*,int ) ;

__attribute__((used)) static inline dma_addr_t phys_to_dma_direct(struct device *dev,
  phys_addr_t phys)
{
 if (force_dma_unencrypted(dev))
  return __phys_to_dma(dev, phys);
 return phys_to_dma(dev, phys);
}
