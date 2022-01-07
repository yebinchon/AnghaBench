
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int lru; } ;
struct mmu_gather {int fullmm; struct mm_struct* mm; } ;
struct mm_walk {struct vm_area_struct* vma; struct madvise_walk_private* private; } ;
struct mm_struct {int dummy; } ;
struct madvise_walk_private {int pageout; struct mmu_gather* tlb; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int ClearPageReferenced (struct page*) ;
 int EINTR ;
 unsigned long HPAGE_PMD_SIZE ;
 int LIST_HEAD (int ) ;
 unsigned long PAGE_SIZE ;
 scalar_t__ PageTransCompound (struct page*) ;
 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (scalar_t__,struct page*) ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int cond_resched () ;
 int current ;
 int deactivate_page (struct page*) ;
 scalar_t__ fatal_signal_pending (int ) ;
 int flush_tlb_batched_pending (struct mm_struct*) ;
 int get_page (struct page*) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_pmd_migration_entry (int ) ;
 int isolate_lru_page (struct page*) ;
 int list_add (int *,int *) ;
 int lock_page (struct page*) ;
 int page_list ;
 int page_mapcount (struct page*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int pmd_mkold (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_present (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int * pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 scalar_t__ pmd_trans_unstable (int *) ;
 scalar_t__ pmd_young (int ) ;
 int pmdp_invalidate (struct vm_area_struct*,unsigned long,int *) ;
 int pte_mkold (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 scalar_t__ pte_young (int ) ;
 int ptep_get_and_clear_full (struct mm_struct*,unsigned long,int *,int ) ;
 int put_page (struct page*) ;
 int reclaim_pages (int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_unlock (int *) ;
 int split_huge_page (struct page*) ;
 int test_and_clear_page_young (struct page*) ;
 scalar_t__ thp_migration_supported () ;
 int tlb_change_page_size (struct mmu_gather*,unsigned long) ;
 int tlb_remove_pmd_tlb_entry (struct mmu_gather*,int *,unsigned long) ;
 int tlb_remove_tlb_entry (struct mmu_gather*,int *,unsigned long) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int madvise_cold_or_pageout_pte_range(pmd_t *pmd,
    unsigned long addr, unsigned long end,
    struct mm_walk *walk)
{
 struct madvise_walk_private *private = walk->private;
 struct mmu_gather *tlb = private->tlb;
 bool pageout = private->pageout;
 struct mm_struct *mm = tlb->mm;
 struct vm_area_struct *vma = walk->vma;
 pte_t *orig_pte, *pte, ptent;
 spinlock_t *ptl;
 struct page *page = ((void*)0);
 LIST_HEAD(page_list);

 if (fatal_signal_pending(current))
  return -EINTR;
 tlb_change_page_size(tlb, PAGE_SIZE);
 orig_pte = pte = pte_offset_map_lock(vma->vm_mm, pmd, addr, &ptl);
 flush_tlb_batched_pending(mm);
 arch_enter_lazy_mmu_mode();
 for (; addr < end; pte++, addr += PAGE_SIZE) {
  ptent = *pte;

  if (pte_none(ptent))
   continue;

  if (!pte_present(ptent))
   continue;

  page = vm_normal_page(vma, addr, ptent);
  if (!page)
   continue;





  if (PageTransCompound(page)) {
   if (page_mapcount(page) != 1)
    break;
   get_page(page);
   if (!trylock_page(page)) {
    put_page(page);
    break;
   }
   pte_unmap_unlock(orig_pte, ptl);
   if (split_huge_page(page)) {
    unlock_page(page);
    put_page(page);
    pte_offset_map_lock(mm, pmd, addr, &ptl);
    break;
   }
   unlock_page(page);
   put_page(page);
   pte = pte_offset_map_lock(mm, pmd, addr, &ptl);
   pte--;
   addr -= PAGE_SIZE;
   continue;
  }

  VM_BUG_ON_PAGE(PageTransCompound(page), page);

  if (pte_young(ptent)) {
   ptent = ptep_get_and_clear_full(mm, addr, pte,
       tlb->fullmm);
   ptent = pte_mkold(ptent);
   set_pte_at(mm, addr, pte, ptent);
   tlb_remove_tlb_entry(tlb, pte, addr);
  }







  ClearPageReferenced(page);
  test_and_clear_page_young(page);
  if (pageout) {
   if (!isolate_lru_page(page))
    list_add(&page->lru, &page_list);
  } else
   deactivate_page(page);
 }

 arch_leave_lazy_mmu_mode();
 pte_unmap_unlock(orig_pte, ptl);
 if (pageout)
  reclaim_pages(&page_list);
 cond_resched();

 return 0;
}
