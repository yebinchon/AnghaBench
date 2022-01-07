
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int ENOMEM ;
 int MMU_NOTIFY_CLEAR ;
 int SINGLE_DEPTH_NESTING ;
 int VM_MAYWRITE ;
 int VM_SHARED ;
 int get_page (struct page*) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_size (struct hstate*) ;
 int * huge_pte_alloc (struct mm_struct*,unsigned long,unsigned long) ;
 int * huge_pte_lock (struct hstate*,struct mm_struct*,int *) ;
 int * huge_pte_lockptr (struct hstate*,struct mm_struct*,int *) ;
 scalar_t__ huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long,unsigned long) ;
 int huge_ptep_get (int *) ;
 int huge_ptep_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int hugetlb_count_add (int ,struct mm_struct*) ;
 scalar_t__ is_hugetlb_entry_hwpoisoned (int ) ;
 scalar_t__ is_hugetlb_entry_migration (int ) ;
 scalar_t__ is_write_migration_entry (int ) ;
 int make_migration_entry_read (int *) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,unsigned long,unsigned long) ;
 int page_dup_rmap (struct page*,int) ;
 int pages_per_huge_page (struct hstate*) ;
 struct page* pte_page (int ) ;
 int pte_to_swp_entry (int ) ;
 int set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int set_huge_swap_pte_at (struct mm_struct*,unsigned long,int *,int ,unsigned long) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int swp_entry_to_pte (int ) ;
 scalar_t__ unlikely (int) ;

int copy_hugetlb_page_range(struct mm_struct *dst, struct mm_struct *src,
       struct vm_area_struct *vma)
{
 pte_t *src_pte, *dst_pte, entry, dst_entry;
 struct page *ptepage;
 unsigned long addr;
 int cow;
 struct hstate *h = hstate_vma(vma);
 unsigned long sz = huge_page_size(h);
 struct mmu_notifier_range range;
 int ret = 0;

 cow = (vma->vm_flags & (VM_SHARED | VM_MAYWRITE)) == VM_MAYWRITE;

 if (cow) {
  mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, src,
     vma->vm_start,
     vma->vm_end);
  mmu_notifier_invalidate_range_start(&range);
 }

 for (addr = vma->vm_start; addr < vma->vm_end; addr += sz) {
  spinlock_t *src_ptl, *dst_ptl;
  src_pte = huge_pte_offset(src, addr, sz);
  if (!src_pte)
   continue;
  dst_pte = huge_pte_alloc(dst, addr, sz);
  if (!dst_pte) {
   ret = -ENOMEM;
   break;
  }
  dst_entry = huge_ptep_get(dst_pte);
  if ((dst_pte == src_pte) || !huge_pte_none(dst_entry))
   continue;

  dst_ptl = huge_pte_lock(h, dst, dst_pte);
  src_ptl = huge_pte_lockptr(h, src, src_pte);
  spin_lock_nested(src_ptl, SINGLE_DEPTH_NESTING);
  entry = huge_ptep_get(src_pte);
  dst_entry = huge_ptep_get(dst_pte);
  if (huge_pte_none(entry) || !huge_pte_none(dst_entry)) {





   ;
  } else if (unlikely(is_hugetlb_entry_migration(entry) ||
        is_hugetlb_entry_hwpoisoned(entry))) {
   swp_entry_t swp_entry = pte_to_swp_entry(entry);

   if (is_write_migration_entry(swp_entry) && cow) {




    make_migration_entry_read(&swp_entry);
    entry = swp_entry_to_pte(swp_entry);
    set_huge_swap_pte_at(src, addr, src_pte,
           entry, sz);
   }
   set_huge_swap_pte_at(dst, addr, dst_pte, entry, sz);
  } else {
   if (cow) {







    huge_ptep_set_wrprotect(src, addr, src_pte);
   }
   entry = huge_ptep_get(src_pte);
   ptepage = pte_page(entry);
   get_page(ptepage);
   page_dup_rmap(ptepage, 1);
   set_huge_pte_at(dst, addr, dst_pte, entry);
   hugetlb_count_add(pages_per_huge_page(h), dst);
  }
  spin_unlock(src_ptl);
  spin_unlock(dst_ptl);
 }

 if (cow)
  mmu_notifier_invalidate_range_end(&range);

 return ret;
}
