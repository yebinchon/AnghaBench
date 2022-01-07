
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int EACCES ;
 int ENOMEM ;
 scalar_t__ PAGE_SIZE ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int pfn_modify_allowed (unsigned long,int ) ;
 int pfn_pte (unsigned long,int ) ;
 int * pte_alloc_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_mkspecial (int ) ;
 int pte_none (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

__attribute__((used)) static int remap_pte_range(struct mm_struct *mm, pmd_t *pmd,
   unsigned long addr, unsigned long end,
   unsigned long pfn, pgprot_t prot)
{
 pte_t *pte;
 spinlock_t *ptl;
 int err = 0;

 pte = pte_alloc_map_lock(mm, pmd, addr, &ptl);
 if (!pte)
  return -ENOMEM;
 arch_enter_lazy_mmu_mode();
 do {
  BUG_ON(!pte_none(*pte));
  if (!pfn_modify_allowed(pfn, prot)) {
   err = -EACCES;
   break;
  }
  set_pte_at(mm, addr, pte, pte_mkspecial(pfn_pte(pfn, prot)));
  pfn++;
 } while (pte++, addr += PAGE_SIZE, addr != end);
 arch_leave_lazy_mmu_mode();
 pte_unmap_unlock(pte - 1, ptl);
 return err;
}
