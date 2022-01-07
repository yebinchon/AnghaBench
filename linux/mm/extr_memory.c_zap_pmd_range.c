
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zap_details {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mmu_gather {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;


 unsigned long HPAGE_PMD_SIZE ;
 int __split_huge_pmd (struct vm_area_struct*,int *,unsigned long,int,int *) ;
 int cond_resched () ;
 scalar_t__ is_swap_pmd (int ) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_devmap (int ) ;
 scalar_t__ pmd_none_or_trans_huge_or_clear_bad (int *) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;
 scalar_t__ zap_huge_pmd (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long) ;
 unsigned long zap_pte_range (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long,struct zap_details*) ;

__attribute__((used)) static inline unsigned long zap_pmd_range(struct mmu_gather *tlb,
    struct vm_area_struct *vma, pud_t *pud,
    unsigned long addr, unsigned long end,
    struct zap_details *details)
{
 pmd_t *pmd;
 unsigned long next;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (is_swap_pmd(*pmd) || pmd_trans_huge(*pmd) || pmd_devmap(*pmd)) {
   if (next - addr != HPAGE_PMD_SIZE)
    __split_huge_pmd(vma, pmd, addr, 0, ((void*)0));
   else if (zap_huge_pmd(tlb, vma, pmd, addr))
    goto next;

  }







  if (pmd_none_or_trans_huge_or_clear_bad(pmd))
   goto next;
  next = zap_pte_range(tlb, vma, pmd, addr, next, details);
next:
  cond_resched();
 } while (pmd++, addr = next, addr != end);

 return addr;
}
