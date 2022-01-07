
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ addr_to_vb_idx (unsigned long) ;

__attribute__((used)) static void *vmap_block_vaddr(unsigned long va_start, unsigned long pages_off)
{
 unsigned long addr;

 addr = va_start + (pages_off << PAGE_SHIFT);
 BUG_ON(addr_to_vb_idx(addr) != addr_to_vb_idx(va_start));
 return (void *)addr;
}
