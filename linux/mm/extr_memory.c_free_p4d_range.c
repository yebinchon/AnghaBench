
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;
typedef int pgd_t ;
typedef int p4d_t ;


 unsigned long PGDIR_MASK ;
 int free_pud_range (struct mmu_gather*,int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 int p4d_free_tlb (struct mmu_gather*,int *,unsigned long) ;
 scalar_t__ p4d_none_or_clear_bad (int *) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_clear (int *) ;

__attribute__((used)) static inline void free_p4d_range(struct mmu_gather *tlb, pgd_t *pgd,
    unsigned long addr, unsigned long end,
    unsigned long floor, unsigned long ceiling)
{
 p4d_t *p4d;
 unsigned long next;
 unsigned long start;

 start = addr;
 p4d = p4d_offset(pgd, addr);
 do {
  next = p4d_addr_end(addr, end);
  if (p4d_none_or_clear_bad(p4d))
   continue;
  free_pud_range(tlb, p4d, addr, next, floor, ceiling);
 } while (p4d++, addr = next, addr != end);

 start &= PGDIR_MASK;
 if (start < floor)
  return;
 if (ceiling) {
  ceiling &= PGDIR_MASK;
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  return;

 p4d = p4d_offset(pgd, start);
 pgd_clear(pgd);
 p4d_free_tlb(tlb, p4d, start);
}
