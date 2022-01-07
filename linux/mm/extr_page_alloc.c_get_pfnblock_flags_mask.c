
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long __get_pfnblock_flags_mask (struct page*,unsigned long,unsigned long,unsigned long) ;

unsigned long get_pfnblock_flags_mask(struct page *page, unsigned long pfn,
     unsigned long end_bitidx,
     unsigned long mask)
{
 return __get_pfnblock_flags_mask(page, pfn, end_bitidx, mask);
}
