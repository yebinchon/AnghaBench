
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_gather {int fullmm; struct mm_struct* mm; } ;
struct mm_walk {struct vm_area_struct* vma; struct mmu_gather* private; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 int ClearPageDirty (struct page*) ;
 int MM_SWAPENTS ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageTransCompound (struct page*) ;
 int VM_BUG_ON_PAGE (scalar_t__,struct page*) ;
 int add_mm_counter (struct mm_struct*,int ,int) ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int cond_resched () ;
 TYPE_1__* current ;
 int flush_tlb_batched_pending (struct mm_struct*) ;
 int free_swap_and_cache (int ) ;
 int get_page (struct page*) ;
 scalar_t__ madvise_free_huge_pmd (struct mmu_gather*,struct vm_area_struct*,int *,unsigned long,unsigned long) ;
 int mark_page_lazyfree (struct page*) ;
 scalar_t__ non_swap_entry (int ) ;
 int page_mapcount (struct page*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pmd_trans_huge (int ) ;
 scalar_t__ pmd_trans_unstable (int *) ;
 int pte_clear_not_present_full (struct mm_struct*,unsigned long,int *,int ) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_mkclean (int ) ;
 int pte_mkold (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (struct mm_struct*,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 scalar_t__ pte_young (int ) ;
 int ptep_get_and_clear_full (struct mm_struct*,unsigned long,int *,int ) ;
 int put_page (struct page*) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 scalar_t__ split_huge_page (struct page*) ;
 int sync_mm_rss (struct mm_struct*) ;
 int tlb_change_page_size (struct mmu_gather*,scalar_t__) ;
 int tlb_remove_tlb_entry (struct mmu_gather*,int *,unsigned long) ;
 int try_to_free_swap (struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static int madvise_free_pte_range(pmd_t *pmd, unsigned long addr,
    unsigned long end, struct mm_walk *walk)

{
 struct mmu_gather *tlb = walk->private;
 struct mm_struct *mm = tlb->mm;
 struct vm_area_struct *vma = walk->vma;
 spinlock_t *ptl;
 pte_t *orig_pte, *pte, ptent;
 struct page *page;
 int nr_swap = 0;
 unsigned long next;

 next = pmd_addr_end(addr, end);
 if (pmd_trans_huge(*pmd))
  if (madvise_free_huge_pmd(tlb, vma, pmd, addr, next))
   goto next;

 if (pmd_trans_unstable(pmd))
  return 0;

 tlb_change_page_size(tlb, PAGE_SIZE);
 orig_pte = pte = pte_offset_map_lock(mm, pmd, addr, &ptl);
 flush_tlb_batched_pending(mm);
 arch_enter_lazy_mmu_mode();
 for (; addr != end; pte++, addr += PAGE_SIZE) {
  ptent = *pte;

  if (pte_none(ptent))
   continue;





  if (!pte_present(ptent)) {
   swp_entry_t entry;

   entry = pte_to_swp_entry(ptent);
   if (non_swap_entry(entry))
    continue;
   nr_swap--;
   free_swap_and_cache(entry);
   pte_clear_not_present_full(mm, addr, pte, tlb->fullmm);
   continue;
  }

  page = vm_normal_page(vma, addr, ptent);
  if (!page)
   continue;






  if (PageTransCompound(page)) {
   if (page_mapcount(page) != 1)
    goto out;
   get_page(page);
   if (!trylock_page(page)) {
    put_page(page);
    goto out;
   }
   pte_unmap_unlock(orig_pte, ptl);
   if (split_huge_page(page)) {
    unlock_page(page);
    put_page(page);
    pte_offset_map_lock(mm, pmd, addr, &ptl);
    goto out;
   }
   unlock_page(page);
   put_page(page);
   pte = pte_offset_map_lock(mm, pmd, addr, &ptl);
   pte--;
   addr -= PAGE_SIZE;
   continue;
  }

  VM_BUG_ON_PAGE(PageTransCompound(page), page);

  if (PageSwapCache(page) || PageDirty(page)) {
   if (!trylock_page(page))
    continue;




   if (page_mapcount(page) != 1) {
    unlock_page(page);
    continue;
   }

   if (PageSwapCache(page) && !try_to_free_swap(page)) {
    unlock_page(page);
    continue;
   }

   ClearPageDirty(page);
   unlock_page(page);
  }

  if (pte_young(ptent) || pte_dirty(ptent)) {






   ptent = ptep_get_and_clear_full(mm, addr, pte,
       tlb->fullmm);

   ptent = pte_mkold(ptent);
   ptent = pte_mkclean(ptent);
   set_pte_at(mm, addr, pte, ptent);
   tlb_remove_tlb_entry(tlb, pte, addr);
  }
  mark_page_lazyfree(page);
 }
out:
 if (nr_swap) {
  if (current->mm == mm)
   sync_mm_rss(mm);

  add_mm_counter(mm, MM_SWAPENTS, nr_swap);
 }
 arch_leave_lazy_mmu_mode();
 pte_unmap_unlock(orig_pte, ptl);
 cond_resched();
next:
 return 0;
}
