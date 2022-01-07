
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int BUG_ON (int) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none_or_clear_bad (int *) ;
 int * pgd_offset_k (unsigned long) ;
 int vunmap_p4d_range (int *,unsigned long,unsigned long) ;

__attribute__((used)) static void vunmap_page_range(unsigned long addr, unsigned long end)
{
 pgd_t *pgd;
 unsigned long next;

 BUG_ON(addr >= end);
 pgd = pgd_offset_k(addr);
 do {
  next = pgd_addr_end(addr, end);
  if (pgd_none_or_clear_bad(pgd))
   continue;
  vunmap_p4d_range(pgd, addr, next);
 } while (pgd++, addr = next, addr != end);
}
