
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
typedef size_t u32 ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
struct address_space {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgoff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;


 unsigned int FAULT_FLAG_WRITE ;
 int VM_FAULT_HWPOISON_LARGE ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SET_HINDEX (int ) ;
 int VM_MAYSHARE ;
 int get_page (struct page*) ;
 int hstate_index (struct hstate*) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_mask (struct hstate*) ;
 int huge_page_size (struct hstate*) ;
 int * huge_pte_alloc (struct mm_struct*,unsigned long,int ) ;
 int * huge_pte_lock (struct hstate*,struct mm_struct*,int *) ;
 int huge_pte_mkdirty (int ) ;
 scalar_t__ huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long,int ) ;
 int huge_pte_write (int ) ;
 int huge_ptep_get (int *) ;
 scalar_t__ huge_ptep_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,unsigned int) ;
 int hugetlb_cow (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,struct page*,int *) ;
 size_t hugetlb_fault_mutex_hash (struct hstate*,struct address_space*,int ,unsigned long) ;
 int * hugetlb_fault_mutex_table ;
 int hugetlb_no_page (struct mm_struct*,struct vm_area_struct*,struct address_space*,int ,unsigned long,int *,unsigned int) ;
 struct page* hugetlbfs_pagecache_page (struct hstate*,struct vm_area_struct*,unsigned long) ;
 int is_hugetlb_entry_hwpoisoned (int ) ;
 int is_hugetlb_entry_migration (int ) ;
 int migration_entry_wait_huge (struct vm_area_struct*,struct mm_struct*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pte_mkyoung (int ) ;
 struct page* pte_page (int ) ;
 int pte_present (int ) ;
 int pte_same (int ,int ) ;
 int put_page (struct page*) ;
 int spin_unlock (int *) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int *) ;
 int vma_end_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 int vma_hugecache_offset (struct hstate*,struct vm_area_struct*,unsigned long) ;
 scalar_t__ vma_needs_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 int wait_on_page_locked (struct page*) ;

vm_fault_t hugetlb_fault(struct mm_struct *mm, struct vm_area_struct *vma,
   unsigned long address, unsigned int flags)
{
 pte_t *ptep, entry;
 spinlock_t *ptl;
 vm_fault_t ret;
 u32 hash;
 pgoff_t idx;
 struct page *page = ((void*)0);
 struct page *pagecache_page = ((void*)0);
 struct hstate *h = hstate_vma(vma);
 struct address_space *mapping;
 int need_wait_lock = 0;
 unsigned long haddr = address & huge_page_mask(h);

 ptep = huge_pte_offset(mm, haddr, huge_page_size(h));
 if (ptep) {
  entry = huge_ptep_get(ptep);
  if (unlikely(is_hugetlb_entry_migration(entry))) {
   migration_entry_wait_huge(vma, mm, ptep);
   return 0;
  } else if (unlikely(is_hugetlb_entry_hwpoisoned(entry)))
   return VM_FAULT_HWPOISON_LARGE |
    VM_FAULT_SET_HINDEX(hstate_index(h));
 } else {
  ptep = huge_pte_alloc(mm, haddr, huge_page_size(h));
  if (!ptep)
   return VM_FAULT_OOM;
 }

 mapping = vma->vm_file->f_mapping;
 idx = vma_hugecache_offset(h, vma, haddr);






 hash = hugetlb_fault_mutex_hash(h, mapping, idx, haddr);
 mutex_lock(&hugetlb_fault_mutex_table[hash]);

 entry = huge_ptep_get(ptep);
 if (huge_pte_none(entry)) {
  ret = hugetlb_no_page(mm, vma, mapping, idx, address, ptep, flags);
  goto out_mutex;
 }

 ret = 0;
 if (!pte_present(entry))
  goto out_mutex;
 if ((flags & FAULT_FLAG_WRITE) && !huge_pte_write(entry)) {
  if (vma_needs_reservation(h, vma, haddr) < 0) {
   ret = VM_FAULT_OOM;
   goto out_mutex;
  }

  vma_end_reservation(h, vma, haddr);

  if (!(vma->vm_flags & VM_MAYSHARE))
   pagecache_page = hugetlbfs_pagecache_page(h,
        vma, haddr);
 }

 ptl = huge_pte_lock(h, mm, ptep);


 if (unlikely(!pte_same(entry, huge_ptep_get(ptep))))
  goto out_ptl;






 page = pte_page(entry);
 if (page != pagecache_page)
  if (!trylock_page(page)) {
   need_wait_lock = 1;
   goto out_ptl;
  }

 get_page(page);

 if (flags & FAULT_FLAG_WRITE) {
  if (!huge_pte_write(entry)) {
   ret = hugetlb_cow(mm, vma, address, ptep,
       pagecache_page, ptl);
   goto out_put_page;
  }
  entry = huge_pte_mkdirty(entry);
 }
 entry = pte_mkyoung(entry);
 if (huge_ptep_set_access_flags(vma, haddr, ptep, entry,
      flags & FAULT_FLAG_WRITE))
  update_mmu_cache(vma, haddr, ptep);
out_put_page:
 if (page != pagecache_page)
  unlock_page(page);
 put_page(page);
out_ptl:
 spin_unlock(ptl);

 if (pagecache_page) {
  unlock_page(pagecache_page);
  put_page(pagecache_page);
 }
out_mutex:
 mutex_unlock(&hugetlb_fault_mutex_table[hash]);







 if (need_wait_lock)
  wait_on_page_locked(page);
 return ret;
}
