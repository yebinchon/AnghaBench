
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int mm_dec_nr_ptes (int ) ;
 int pmd_clear (int *) ;
 int pmd_pgtable (int ) ;
 int pte_free_tlb (struct mmu_gather*,int ,unsigned long) ;

__attribute__((used)) static void free_pte_range(struct mmu_gather *tlb, pmd_t *pmd,
      unsigned long addr)
{
 pgtable_t token = pmd_pgtable(*pmd);
 pmd_clear(pmd);
 pte_free_tlb(tlb, token, addr);
 mm_dec_nr_ptes(tlb->mm);
}
