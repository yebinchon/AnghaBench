
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct device {scalar_t__* dma_mask; } ;
typedef scalar_t__ dma_addr_t ;


 int EIO ;
 int arch_dma_set_mask (struct device*,scalar_t__) ;
 int dma_supported (struct device*,scalar_t__) ;

int dma_set_mask(struct device *dev, u64 mask)
{




 mask = (dma_addr_t)mask;

 if (!dev->dma_mask || !dma_supported(dev, mask))
  return -EIO;

 arch_dma_set_mask(dev, mask);
 *dev->dma_mask = mask;
 return 0;
}
