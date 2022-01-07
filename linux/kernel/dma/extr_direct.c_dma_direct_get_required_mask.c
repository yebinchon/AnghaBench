
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct device {int dummy; } ;


 int PAGE_SHIFT ;
 int fls64 (unsigned long long) ;
 int max_pfn ;
 unsigned long long phys_to_dma_direct (struct device*,int) ;

u64 dma_direct_get_required_mask(struct device *dev)
{
 u64 max_dma = phys_to_dma_direct(dev, (max_pfn - 1) << PAGE_SHIFT);

 return (1ULL << (fls64(max_dma) - 1)) * 2 - 1;
}
