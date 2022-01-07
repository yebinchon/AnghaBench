
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_gather {int mm; int fullmm; } ;
typedef int spinlock_t ;
typedef int pmd_t ;


 int HPAGE_PMD_NR ;
 int HPAGE_PMD_SIZE ;
 int MM_ANONPAGES ;
 scalar_t__ PageAnon (struct page*) ;
 int PageHead (struct page*) ;
 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int WARN_ONCE (int,char*) ;
 int * __pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 int add_mm_counter (int ,int ,int ) ;
 scalar_t__ arch_needs_pgtable_deposit () ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_pmd_migration_entry (int ) ;
 int mm_counter_file (struct page*) ;
 scalar_t__ page_mapcount (struct page*) ;
 int page_remove_rmap (struct page*,int) ;
 struct page* pfn_to_page (int ) ;
 struct page* pmd_page (int ) ;
 scalar_t__ pmd_present (int ) ;
 int pmd_to_swp_entry (int ) ;
 int pmdp_huge_get_and_clear_full (int ,unsigned long,int *,int ) ;
 int spin_unlock (int *) ;
 int swp_offset (int ) ;
 scalar_t__ thp_migration_supported () ;
 int tlb_change_page_size (struct mmu_gather*,int ) ;
 int tlb_remove_page_size (struct mmu_gather*,struct page*,int ) ;
 int tlb_remove_pmd_tlb_entry (struct mmu_gather*,int *,unsigned long) ;
 scalar_t__ vma_is_dax (struct vm_area_struct*) ;
 int zap_deposited_table (int ,int *) ;

int zap_huge_pmd(struct mmu_gather *tlb, struct vm_area_struct *vma,
   pmd_t *pmd, unsigned long addr)
{
 pmd_t orig_pmd;
 spinlock_t *ptl;

 tlb_change_page_size(tlb, HPAGE_PMD_SIZE);

 ptl = __pmd_trans_huge_lock(pmd, vma);
 if (!ptl)
  return 0;






 orig_pmd = pmdp_huge_get_and_clear_full(tlb->mm, addr, pmd,
   tlb->fullmm);
 tlb_remove_pmd_tlb_entry(tlb, pmd, addr);
 if (vma_is_dax(vma)) {
  if (arch_needs_pgtable_deposit())
   zap_deposited_table(tlb->mm, pmd);
  spin_unlock(ptl);
  if (is_huge_zero_pmd(orig_pmd))
   tlb_remove_page_size(tlb, pmd_page(orig_pmd), HPAGE_PMD_SIZE);
 } else if (is_huge_zero_pmd(orig_pmd)) {
  zap_deposited_table(tlb->mm, pmd);
  spin_unlock(ptl);
  tlb_remove_page_size(tlb, pmd_page(orig_pmd), HPAGE_PMD_SIZE);
 } else {
  struct page *page = ((void*)0);
  int flush_needed = 1;

  if (pmd_present(orig_pmd)) {
   page = pmd_page(orig_pmd);
   page_remove_rmap(page, 1);
   VM_BUG_ON_PAGE(page_mapcount(page) < 0, page);
   VM_BUG_ON_PAGE(!PageHead(page), page);
  } else if (thp_migration_supported()) {
   swp_entry_t entry;

   VM_BUG_ON(!is_pmd_migration_entry(orig_pmd));
   entry = pmd_to_swp_entry(orig_pmd);
   page = pfn_to_page(swp_offset(entry));
   flush_needed = 0;
  } else
   WARN_ONCE(1, "Non present huge pmd without pmd migration enabled!");

  if (PageAnon(page)) {
   zap_deposited_table(tlb->mm, pmd);
   add_mm_counter(tlb->mm, MM_ANONPAGES, -HPAGE_PMD_NR);
  } else {
   if (arch_needs_pgtable_deposit())
    zap_deposited_table(tlb->mm, pmd);
   add_mm_counter(tlb->mm, mm_counter_file(page), -HPAGE_PMD_NR);
  }

  spin_unlock(ptl);
  if (flush_needed)
   tlb_remove_page_size(tlb, page, HPAGE_PMD_SIZE);
 }
 return 1;
}
