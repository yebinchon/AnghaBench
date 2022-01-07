
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pud_t ;
typedef int p4d_t ;


 unsigned long P4D_MASK ;
 int free_pmd_range (struct mmu_gather*,int *,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int mm_dec_nr_puds (int ) ;
 int p4d_clear (int *) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 int pud_free_tlb (struct mmu_gather*,int *,unsigned long) ;
 scalar_t__ pud_none_or_clear_bad (int *) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static inline void free_pud_range(struct mmu_gather *tlb, p4d_t *p4d,
    unsigned long addr, unsigned long end,
    unsigned long floor, unsigned long ceiling)
{
 pud_t *pud;
 unsigned long next;
 unsigned long start;

 start = addr;
 pud = pud_offset(p4d, addr);
 do {
  next = pud_addr_end(addr, end);
  if (pud_none_or_clear_bad(pud))
   continue;
  free_pmd_range(tlb, pud, addr, next, floor, ceiling);
 } while (pud++, addr = next, addr != end);

 start &= P4D_MASK;
 if (start < floor)
  return;
 if (ceiling) {
  ceiling &= P4D_MASK;
  if (!ceiling)
   return;
 }
 if (end - 1 > ceiling - 1)
  return;

 pud = pud_offset(p4d, start);
 p4d_clear(p4d);
 pud_free_tlb(tlb, pud, start);
 mm_dec_nr_puds(tlb->mm);
}
