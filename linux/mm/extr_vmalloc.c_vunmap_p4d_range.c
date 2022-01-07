
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 scalar_t__ p4d_clear_huge (int *) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,unsigned long) ;
 int vunmap_pud_range (int *,unsigned long,unsigned long) ;

__attribute__((used)) static void vunmap_p4d_range(pgd_t *pgd, unsigned long addr, unsigned long end)
{
 p4d_t *p4d;
 unsigned long next;

 p4d = p4d_offset(pgd, addr);
 do {
  next = p4d_addr_end(addr, end);
  if (p4d_clear_huge(p4d))
   continue;
  if (p4d_none_or_clear_bad(p4d))
   continue;
  vunmap_pud_range(p4d, addr, next);
 } while (p4d++, addr = next, addr != end);
}
