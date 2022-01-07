
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page_vma_mapped_walk {int address; int * pte; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int BUG_ON (int ) ;
 int EFAULT ;
 int MMU_NOTIFY_CLEAR ;
 scalar_t__ PAGE_SIZE ;
 int PageSwapCache (struct page*) ;
 int PageTransCompound (struct page*) ;
 scalar_t__ WARN_ONCE (int,char*) ;
 int flush_cache_page (struct vm_area_struct*,int,int ) ;
 scalar_t__ mm_tlb_flush_pending (struct mm_struct*) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,int,scalar_t__) ;
 int page_address_in_vma (struct page*,struct vm_area_struct*) ;
 scalar_t__ page_count (struct page*) ;
 scalar_t__ page_mapcount (struct page*) ;
 int page_to_pfn (struct page*) ;
 int page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 int page_vma_mapped_walk_done (struct page_vma_mapped_walk*) ;
 int pte_clear_savedwrite (int ) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_mkclean (int ) ;
 scalar_t__ pte_protnone (int ) ;
 scalar_t__ pte_savedwrite (int ) ;
 scalar_t__ pte_write (int ) ;
 int pte_wrprotect (int ) ;
 int ptep_clear_flush (struct vm_area_struct*,int,int *) ;
 int set_page_dirty (struct page*) ;
 int set_pte_at (struct mm_struct*,int,int *,int ) ;
 int set_pte_at_notify (struct mm_struct*,int,int *,int ) ;

__attribute__((used)) static int write_protect_page(struct vm_area_struct *vma, struct page *page,
         pte_t *orig_pte)
{
 struct mm_struct *mm = vma->vm_mm;
 struct page_vma_mapped_walk pvmw = {
  .page = page,
  .vma = vma,
 };
 int swapped;
 int err = -EFAULT;
 struct mmu_notifier_range range;

 pvmw.address = page_address_in_vma(page, vma);
 if (pvmw.address == -EFAULT)
  goto out;

 BUG_ON(PageTransCompound(page));

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, mm,
    pvmw.address,
    pvmw.address + PAGE_SIZE);
 mmu_notifier_invalidate_range_start(&range);

 if (!page_vma_mapped_walk(&pvmw))
  goto out_mn;
 if (WARN_ONCE(!pvmw.pte, "Unexpected PMD mapping?"))
  goto out_unlock;

 if (pte_write(*pvmw.pte) || pte_dirty(*pvmw.pte) ||
     (pte_protnone(*pvmw.pte) && pte_savedwrite(*pvmw.pte)) ||
      mm_tlb_flush_pending(mm)) {
  pte_t entry;

  swapped = PageSwapCache(page);
  flush_cache_page(vma, pvmw.address, page_to_pfn(page));
  entry = ptep_clear_flush(vma, pvmw.address, pvmw.pte);




  if (page_mapcount(page) + 1 + swapped != page_count(page)) {
   set_pte_at(mm, pvmw.address, pvmw.pte, entry);
   goto out_unlock;
  }
  if (pte_dirty(entry))
   set_page_dirty(page);

  if (pte_protnone(entry))
   entry = pte_mkclean(pte_clear_savedwrite(entry));
  else
   entry = pte_mkclean(pte_wrprotect(entry));
  set_pte_at_notify(mm, pvmw.address, pvmw.pte, entry);
 }
 *orig_pte = *pvmw.pte;
 err = 0;

out_unlock:
 page_vma_mapped_walk_done(&pvmw);
out_mn:
 mmu_notifier_invalidate_range_end(&range);
out:
 return err;
}
