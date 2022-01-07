
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct vm_area_struct {int vm_flags; int vm_end; struct mm_struct* vm_mm; } ;
struct page_vma_mapped_walk {unsigned long address; int * pte; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {unsigned long start; scalar_t__ end; } ;
struct mm_struct {int mmlist; } ;
typedef int pte_t ;
typedef enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;
struct TYPE_8__ {int mmlist; } ;


 int CONFIG_MIGRATION ;
 scalar_t__ IS_ENABLED (int ) ;
 int MMU_NOTIFY_CLEAR ;
 int MM_ANONPAGES ;
 int MM_SWAPENTS ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageAnon (struct page*) ;
 int PageDirty (struct page*) ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int PageTransCompound (struct page*) ;
 int SetPageSwapBacked (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_HWPOISON ;
 int TTU_IGNORE_MLOCK ;
 int TTU_MIGRATION ;
 int TTU_MUNLOCK ;
 int TTU_SPLIT_FREEZE ;
 int TTU_SPLIT_HUGE_PMD ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_LOCKED ;
 int WARN_ON_ONCE (int) ;
 int adjust_range_if_pmd_sharing_possible (struct vm_area_struct*,unsigned long*,scalar_t__*) ;
 scalar_t__ arch_unmap_one (struct mm_struct*,struct vm_area_struct*,unsigned long,int ) ;
 int compound_nr (struct page*) ;
 int dec_mm_counter (struct mm_struct*,int ) ;
 int flush_cache_page (struct vm_area_struct*,unsigned long,struct page*) ;
 int flush_cache_range (struct vm_area_struct*,unsigned long,scalar_t__) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,scalar_t__) ;
 scalar_t__ huge_pmd_unshare (struct mm_struct*,unsigned long*,int *) ;
 int hugetlb_count_sub (int ,struct mm_struct*) ;
 int inc_mm_counter (struct mm_struct*,int ) ;
 TYPE_6__ init_mm ;
 int is_device_private_page (struct page*) ;
 scalar_t__ is_zone_device_page (struct page*) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 TYPE_1__ make_hwpoison_entry (struct page*) ;
 TYPE_1__ make_migration_entry (struct page*,int ) ;
 int min (int ,scalar_t__) ;
 int mlock_vma_page (struct page*) ;
 int mm_counter (struct page*) ;
 int mm_counter_file (struct page*) ;
 int mmlist_lock ;
 int mmu_notifier_invalidate_range (struct mm_struct*,unsigned long,scalar_t__) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,unsigned long,int ) ;
 int page_private (struct page*) ;
 int page_remove_rmap (struct page*,scalar_t__) ;
 scalar_t__ page_size (struct page*) ;
 struct page* page_to_pfn (struct page*) ;
 scalar_t__ page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 int page_vma_mapped_walk_done (struct page_vma_mapped_walk*) ;
 scalar_t__ pte_dirty (int ) ;
 struct page* pte_pfn (int ) ;
 scalar_t__ pte_soft_dirty (int ) ;
 int pte_swp_mksoft_dirty (int ) ;
 scalar_t__ pte_unused (int ) ;
 int pte_write (int ) ;
 int ptep_clear_flush (struct vm_area_struct*,unsigned long,int *) ;
 scalar_t__ ptep_clear_flush_young_notify (struct vm_area_struct*,unsigned long,int *) ;
 int ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int put_page (struct page*) ;
 int set_huge_swap_pte_at (struct mm_struct*,unsigned long,int *,int ,int ) ;
 int set_page_dirty (struct page*) ;
 int set_pmd_migration_entry (struct page_vma_mapped_walk*,struct page*) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int set_tlb_ubc_flush_pending (struct mm_struct*,scalar_t__) ;
 scalar_t__ should_defer_flush (struct mm_struct*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int split_huge_pmd_address (struct vm_area_struct*,unsigned long,int,struct page*) ;
 scalar_t__ swap_duplicate (TYPE_1__) ;
 int swp_entry_to_pte (TYPE_1__) ;
 scalar_t__ unlikely (int) ;
 int update_hiwater_rss (struct mm_struct*) ;
 int userfaultfd_armed (struct vm_area_struct*) ;
 int vma_mmu_pagesize (struct vm_area_struct*) ;

__attribute__((used)) static bool try_to_unmap_one(struct page *page, struct vm_area_struct *vma,
       unsigned long address, void *arg)
{
 struct mm_struct *mm = vma->vm_mm;
 struct page_vma_mapped_walk pvmw = {
  .page = page,
  .vma = vma,
  .address = address,
 };
 pte_t pteval;
 struct page *subpage;
 bool ret = 1;
 struct mmu_notifier_range range;
 enum ttu_flags flags = (enum ttu_flags)arg;


 if ((flags & TTU_MUNLOCK) && !(vma->vm_flags & VM_LOCKED))
  return 1;

 if (IS_ENABLED(CONFIG_MIGRATION) && (flags & TTU_MIGRATION) &&
     is_zone_device_page(page) && !is_device_private_page(page))
  return 1;

 if (flags & TTU_SPLIT_HUGE_PMD) {
  split_huge_pmd_address(vma, address,
    flags & TTU_SPLIT_FREEZE, page);
 }
 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
    address,
    min(vma->vm_end, address + page_size(page)));
 if (PageHuge(page)) {




  adjust_range_if_pmd_sharing_possible(vma, &range.start,
           &range.end);
 }
 mmu_notifier_invalidate_range_start(&range);

 while (page_vma_mapped_walk(&pvmw)) {
  if (!(flags & TTU_IGNORE_MLOCK)) {
   if (vma->vm_flags & VM_LOCKED) {

    if (!PageTransCompound(page)) {




     mlock_vma_page(page);
    }
    ret = 0;
    page_vma_mapped_walk_done(&pvmw);
    break;
   }
   if (flags & TTU_MUNLOCK)
    continue;
  }


  VM_BUG_ON_PAGE(!pvmw.pte, page);

  subpage = page - page_to_pfn(page) + pte_pfn(*pvmw.pte);
  address = pvmw.address;

  if (PageHuge(page)) {
   if (huge_pmd_unshare(mm, &address, pvmw.pte)) {







    flush_cache_range(vma, range.start, range.end);
    flush_tlb_range(vma, range.start, range.end);
    mmu_notifier_invalidate_range(mm, range.start,
             range.end);
    page_vma_mapped_walk_done(&pvmw);
    break;
   }
  }

  if (IS_ENABLED(CONFIG_MIGRATION) &&
      (flags & TTU_MIGRATION) &&
      is_zone_device_page(page)) {
   swp_entry_t entry;
   pte_t swp_pte;

   pteval = ptep_get_and_clear(mm, pvmw.address, pvmw.pte);






   entry = make_migration_entry(page, 0);
   swp_pte = swp_entry_to_pte(entry);
   if (pte_soft_dirty(pteval))
    swp_pte = pte_swp_mksoft_dirty(swp_pte);
   set_pte_at(mm, pvmw.address, pvmw.pte, swp_pte);
   subpage = page;
   goto discard;
  }

  if (!(flags & TTU_IGNORE_ACCESS)) {
   if (ptep_clear_flush_young_notify(vma, address,
      pvmw.pte)) {
    ret = 0;
    page_vma_mapped_walk_done(&pvmw);
    break;
   }
  }


  flush_cache_page(vma, address, pte_pfn(*pvmw.pte));
  if (should_defer_flush(mm, flags)) {
   pteval = ptep_get_and_clear(mm, address, pvmw.pte);

   set_tlb_ubc_flush_pending(mm, pte_dirty(pteval));
  } else {
   pteval = ptep_clear_flush(vma, address, pvmw.pte);
  }


  if (pte_dirty(pteval))
   set_page_dirty(page);


  update_hiwater_rss(mm);

  if (PageHWPoison(page) && !(flags & TTU_IGNORE_HWPOISON)) {
   pteval = swp_entry_to_pte(make_hwpoison_entry(subpage));
   if (PageHuge(page)) {
    hugetlb_count_sub(compound_nr(page), mm);
    set_huge_swap_pte_at(mm, address,
           pvmw.pte, pteval,
           vma_mmu_pagesize(vma));
   } else {
    dec_mm_counter(mm, mm_counter(page));
    set_pte_at(mm, address, pvmw.pte, pteval);
   }

  } else if (pte_unused(pteval) && !userfaultfd_armed(vma)) {
   dec_mm_counter(mm, mm_counter(page));

   mmu_notifier_invalidate_range(mm, address,
            address + PAGE_SIZE);
  } else if (IS_ENABLED(CONFIG_MIGRATION) &&
    (flags & (TTU_MIGRATION|TTU_SPLIT_FREEZE))) {
   swp_entry_t entry;
   pte_t swp_pte;

   if (arch_unmap_one(mm, vma, address, pteval) < 0) {
    set_pte_at(mm, address, pvmw.pte, pteval);
    ret = 0;
    page_vma_mapped_walk_done(&pvmw);
    break;
   }






   entry = make_migration_entry(subpage,
     pte_write(pteval));
   swp_pte = swp_entry_to_pte(entry);
   if (pte_soft_dirty(pteval))
    swp_pte = pte_swp_mksoft_dirty(swp_pte);
   set_pte_at(mm, address, pvmw.pte, swp_pte);




  } else if (PageAnon(page)) {
   swp_entry_t entry = { .val = page_private(subpage) };
   pte_t swp_pte;




   if (unlikely(PageSwapBacked(page) != PageSwapCache(page))) {
    WARN_ON_ONCE(1);
    ret = 0;

    mmu_notifier_invalidate_range(mm, address,
       address + PAGE_SIZE);
    page_vma_mapped_walk_done(&pvmw);
    break;
   }


   if (!PageSwapBacked(page)) {
    if (!PageDirty(page)) {

     mmu_notifier_invalidate_range(mm,
      address, address + PAGE_SIZE);
     dec_mm_counter(mm, MM_ANONPAGES);
     goto discard;
    }





    set_pte_at(mm, address, pvmw.pte, pteval);
    SetPageSwapBacked(page);
    ret = 0;
    page_vma_mapped_walk_done(&pvmw);
    break;
   }

   if (swap_duplicate(entry) < 0) {
    set_pte_at(mm, address, pvmw.pte, pteval);
    ret = 0;
    page_vma_mapped_walk_done(&pvmw);
    break;
   }
   if (arch_unmap_one(mm, vma, address, pteval) < 0) {
    set_pte_at(mm, address, pvmw.pte, pteval);
    ret = 0;
    page_vma_mapped_walk_done(&pvmw);
    break;
   }
   if (list_empty(&mm->mmlist)) {
    spin_lock(&mmlist_lock);
    if (list_empty(&mm->mmlist))
     list_add(&mm->mmlist, &init_mm.mmlist);
    spin_unlock(&mmlist_lock);
   }
   dec_mm_counter(mm, MM_ANONPAGES);
   inc_mm_counter(mm, MM_SWAPENTS);
   swp_pte = swp_entry_to_pte(entry);
   if (pte_soft_dirty(pteval))
    swp_pte = pte_swp_mksoft_dirty(swp_pte);
   set_pte_at(mm, address, pvmw.pte, swp_pte);

   mmu_notifier_invalidate_range(mm, address,
            address + PAGE_SIZE);
  } else {
   dec_mm_counter(mm, mm_counter_file(page));
  }
discard:







  page_remove_rmap(subpage, PageHuge(page));
  put_page(page);
 }

 mmu_notifier_invalidate_range_end(&range);

 return ret;
}
