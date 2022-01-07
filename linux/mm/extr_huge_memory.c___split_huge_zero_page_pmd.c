
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int HPAGE_PMD_NR ;
 scalar_t__ PAGE_SIZE ;
 int VM_BUG_ON (int) ;
 int my_zero_pfn (unsigned long) ;
 int pfn_pte (int ,int ) ;
 int pgtable_trans_huge_withdraw (struct mm_struct*,int *) ;
 int pmd_populate (struct mm_struct*,int *,int ) ;
 int pmdp_huge_clear_flush (struct vm_area_struct*,unsigned long,int *) ;
 int pte_mkspecial (int ) ;
 int pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void __split_huge_zero_page_pmd(struct vm_area_struct *vma,
  unsigned long haddr, pmd_t *pmd)
{
 struct mm_struct *mm = vma->vm_mm;
 pgtable_t pgtable;
 pmd_t _pmd;
 int i;
 pmdp_huge_clear_flush(vma, haddr, pmd);

 pgtable = pgtable_trans_huge_withdraw(mm, pmd);
 pmd_populate(mm, &_pmd, pgtable);

 for (i = 0; i < HPAGE_PMD_NR; i++, haddr += PAGE_SIZE) {
  pte_t *pte, entry;
  entry = pfn_pte(my_zero_pfn(haddr), vma->vm_page_prot);
  entry = pte_mkspecial(entry);
  pte = pte_offset_map(&_pmd, haddr);
  VM_BUG_ON(!pte_none(*pte));
  set_pte_at(mm, haddr, pte, entry);
  pte_unmap(pte);
 }
 smp_wmb();
 pmd_populate(mm, pmd, pgtable);
}
