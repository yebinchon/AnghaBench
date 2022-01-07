
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_fault_t ;
typedef size_t u32 ;
struct vm_fault {unsigned long address; unsigned int flags; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
struct address_space {int host; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef unsigned long pgoff_t ;
struct TYPE_2__ {int pid; } ;


 int ClearPagePrivate (struct page*) ;
 int EEXIST ;
 unsigned int FAULT_FLAG_WRITE ;
 int HPAGE_RESV_UNMAPPED ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int PageHWPoison (struct page*) ;
 int VM_FAULT_HWPOISON ;
 int VM_FAULT_OOM ;
 int VM_FAULT_SET_HINDEX (int ) ;
 int VM_FAULT_SIGBUS ;
 int VM_MAYSHARE ;
 int VM_SHARED ;
 int VM_UFFD_MISSING ;
 int VM_WRITE ;
 int __SetPageUptodate (struct page*) ;
 struct page* alloc_huge_page (struct vm_area_struct*,unsigned long,int ) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 int clear_huge_page (struct page*,unsigned long,int ) ;
 TYPE_1__* current ;
 struct page* find_lock_page (struct address_space*,unsigned long) ;
 int handle_userfault (struct vm_fault*,int ) ;
 int hstate_index (struct hstate*) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 int huge_add_to_page_cache (struct page*,struct address_space*,unsigned long) ;
 unsigned long huge_page_mask (struct hstate*) ;
 unsigned long huge_page_shift (struct hstate*) ;
 int * huge_pte_lock (struct hstate*,struct mm_struct*,int *) ;
 int huge_pte_none (int ) ;
 int huge_ptep_get (int *) ;
 int hugepage_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long) ;
 int hugetlb_count_add (int ,struct mm_struct*) ;
 int hugetlb_cow (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,struct page*,int *) ;
 size_t hugetlb_fault_mutex_hash (struct hstate*,struct address_space*,unsigned long,unsigned long) ;
 int * hugetlb_fault_mutex_table ;
 unsigned long i_size_read (int ) ;
 scalar_t__ is_vma_resv_set (struct vm_area_struct*,int ) ;
 int lock_page (struct page*) ;
 int make_huge_pte (struct vm_area_struct*,struct page*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_dup_rmap (struct page*,int) ;
 int pages_per_huge_page (struct hstate*) ;
 int pr_warn_ratelimited (char*,int ) ;
 int put_page (struct page*) ;
 int restore_reserve_on_error (struct hstate*,struct vm_area_struct*,unsigned long,struct page*) ;
 int set_huge_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int set_page_huge_active (struct page*) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;
 scalar_t__ userfaultfd_missing (struct vm_area_struct*) ;
 int vma_end_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 scalar_t__ vma_needs_reservation (struct hstate*,struct vm_area_struct*,unsigned long) ;
 int vmf_error (int ) ;

__attribute__((used)) static vm_fault_t hugetlb_no_page(struct mm_struct *mm,
   struct vm_area_struct *vma,
   struct address_space *mapping, pgoff_t idx,
   unsigned long address, pte_t *ptep, unsigned int flags)
{
 struct hstate *h = hstate_vma(vma);
 vm_fault_t ret = VM_FAULT_SIGBUS;
 int anon_rmap = 0;
 unsigned long size;
 struct page *page;
 pte_t new_pte;
 spinlock_t *ptl;
 unsigned long haddr = address & huge_page_mask(h);
 bool new_page = 0;






 if (is_vma_resv_set(vma, HPAGE_RESV_UNMAPPED)) {
  pr_warn_ratelimited("PID %d killed due to inadequate hugepage pool\n",
      current->pid);
  return ret;
 }





retry:
 page = find_lock_page(mapping, idx);
 if (!page) {
  size = i_size_read(mapping->host) >> huge_page_shift(h);
  if (idx >= size)
   goto out;




  if (userfaultfd_missing(vma)) {
   u32 hash;
   struct vm_fault vmf = {
    .vma = vma,
    .address = haddr,
    .flags = flags,







   };






   hash = hugetlb_fault_mutex_hash(h, mapping, idx, haddr);
   mutex_unlock(&hugetlb_fault_mutex_table[hash]);
   ret = handle_userfault(&vmf, VM_UFFD_MISSING);
   mutex_lock(&hugetlb_fault_mutex_table[hash]);
   goto out;
  }

  page = alloc_huge_page(vma, haddr, 0);
  if (IS_ERR(page)) {
   ptl = huge_pte_lock(h, mm, ptep);
   if (!huge_pte_none(huge_ptep_get(ptep))) {
    ret = 0;
    spin_unlock(ptl);
    goto out;
   }
   spin_unlock(ptl);
   ret = vmf_error(PTR_ERR(page));
   goto out;
  }
  clear_huge_page(page, address, pages_per_huge_page(h));
  __SetPageUptodate(page);
  new_page = 1;

  if (vma->vm_flags & VM_MAYSHARE) {
   int err = huge_add_to_page_cache(page, mapping, idx);
   if (err) {
    put_page(page);
    if (err == -EEXIST)
     goto retry;
    goto out;
   }
  } else {
   lock_page(page);
   if (unlikely(anon_vma_prepare(vma))) {
    ret = VM_FAULT_OOM;
    goto backout_unlocked;
   }
   anon_rmap = 1;
  }
 } else {





  if (unlikely(PageHWPoison(page))) {
   ret = VM_FAULT_HWPOISON |
    VM_FAULT_SET_HINDEX(hstate_index(h));
   goto backout_unlocked;
  }
 }







 if ((flags & FAULT_FLAG_WRITE) && !(vma->vm_flags & VM_SHARED)) {
  if (vma_needs_reservation(h, vma, haddr) < 0) {
   ret = VM_FAULT_OOM;
   goto backout_unlocked;
  }

  vma_end_reservation(h, vma, haddr);
 }

 ptl = huge_pte_lock(h, mm, ptep);
 size = i_size_read(mapping->host) >> huge_page_shift(h);
 if (idx >= size)
  goto backout;

 ret = 0;
 if (!huge_pte_none(huge_ptep_get(ptep)))
  goto backout;

 if (anon_rmap) {
  ClearPagePrivate(page);
  hugepage_add_new_anon_rmap(page, vma, haddr);
 } else
  page_dup_rmap(page, 1);
 new_pte = make_huge_pte(vma, page, ((vma->vm_flags & VM_WRITE)
    && (vma->vm_flags & VM_SHARED)));
 set_huge_pte_at(mm, haddr, ptep, new_pte);

 hugetlb_count_add(pages_per_huge_page(h), mm);
 if ((flags & FAULT_FLAG_WRITE) && !(vma->vm_flags & VM_SHARED)) {

  ret = hugetlb_cow(mm, vma, address, ptep, page, ptl);
 }

 spin_unlock(ptl);






 if (new_page)
  set_page_huge_active(page);

 unlock_page(page);
out:
 return ret;

backout:
 spin_unlock(ptl);
backout_unlocked:
 unlock_page(page);
 restore_reserve_on_error(h, vma, haddr, page);
 put_page(page);
 goto out;
}
