
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;


typedef int vm_fault_t ;
struct TYPE_19__ {scalar_t__ val; } ;
typedef TYPE_3__ swp_entry_t ;
struct vm_fault {int flags; int ptl; int * pte; int address; int orig_pte; int pmd; TYPE_13__* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int vm_mm; int vm_page_prot; } ;
struct swap_info_struct {int flags; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int pte_t ;
struct TYPE_18__ {TYPE_1__* ops; } ;
struct TYPE_17__ {int (* migrate_to_ram ) (struct vm_fault*) ;} ;
struct TYPE_16__ {TYPE_2__* pgmap; } ;


 int DELAYACCT_PF_SWAPIN ;
 int FAULT_FLAG_WRITE ;
 int GFP_HIGHUSER_MOVABLE ;
 int GFP_KERNEL ;
 int MM_ANONPAGES ;
 int MM_SWAPENTS ;
 int PGMAJFAULT ;
 scalar_t__ PageHWPoison (struct page*) ;
 scalar_t__ PageMlocked (struct page*) ;
 int PageSwapCache (struct page*) ;
 int PageUptodate (struct page*) ;
 int RMAP_EXCLUSIVE ;
 int SWP_SYNCHRONOUS_IO ;
 int VM_FAULT_ERROR ;
 int VM_FAULT_HWPOISON ;
 int VM_FAULT_MAJOR ;
 int VM_FAULT_OOM ;
 int VM_FAULT_RETRY ;
 int VM_FAULT_SIGBUS ;
 int VM_FAULT_WRITE ;
 int VM_LOCKED ;
 int __SetPageLocked (struct page*) ;
 int __SetPageSwapBacked (struct page*) ;
 int __swap_count (TYPE_3__) ;
 int activate_page (struct page*) ;
 struct page* alloc_page_vma (int ,struct vm_area_struct*,int ) ;
 int arch_do_swap_page (int ,struct vm_area_struct*,int ,int ,int ) ;
 int count_memcg_event_mm (int ,int ) ;
 int count_vm_event (int ) ;
 int dec_mm_counter_fast (int ,int ) ;
 int delayacct_clear_flag (int ) ;
 int delayacct_set_flag (int ) ;
 TYPE_13__* device_private_entry_to_page (TYPE_3__) ;
 int do_page_add_anon_rmap (struct page*,struct vm_area_struct*,int ,int) ;
 int do_wp_page (struct vm_fault*) ;
 int flush_icache_page (struct vm_area_struct*,struct page*) ;
 int inc_mm_counter_fast (int ,int ) ;
 scalar_t__ is_device_private_entry (TYPE_3__) ;
 scalar_t__ is_hwpoison_entry (TYPE_3__) ;
 scalar_t__ is_migration_entry (TYPE_3__) ;
 struct page* ksm_might_need_to_copy (struct page*,struct vm_area_struct*,int ) ;
 scalar_t__ likely (int ) ;
 int lock_page_or_retry (struct page*,int ,int) ;
 struct page* lookup_swap_cache (TYPE_3__,struct vm_area_struct*,int ) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int lru_cache_add_anon (struct page*) ;
 int maybe_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 scalar_t__ mem_cgroup_swap_full (struct page*) ;
 scalar_t__ mem_cgroup_try_charge_delay (struct page*,int ,int ,struct mem_cgroup**,int) ;
 int migration_entry_wait (int ,int ,int ) ;
 int mk_pte (struct page*,int ) ;
 int non_swap_entry (TYPE_3__) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,int ,int) ;
 scalar_t__ page_private (struct page*) ;
 int print_bad_pte (struct vm_area_struct*,int ,int ,int *) ;
 int pte_mkdirty (int ) ;
 int pte_mksoft_dirty (int ) ;
 void* pte_offset_map_lock (int ,int ,int ,int *) ;
 int pte_same (int ,int ) ;
 scalar_t__ pte_swp_soft_dirty (int ) ;
 TYPE_3__ pte_to_swp_entry (int ) ;
 int pte_unmap_same (int ,int ,int *,int ) ;
 int pte_unmap_unlock (int *,int ) ;
 int put_page (struct page*) ;
 scalar_t__ reuse_swap_page (struct page*,int *) ;
 int set_page_private (struct page*,scalar_t__) ;
 int set_pte_at (int ,int ,int *,int ) ;
 int stub1 (struct vm_fault*) ;
 int swap_free (TYPE_3__) ;
 int swap_readpage (struct page*,int) ;
 struct page* swapin_readahead (TYPE_3__,int ,struct vm_fault*) ;
 struct swap_info_struct* swp_swap_info (TYPE_3__) ;
 int try_to_free_swap (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int update_mmu_cache (struct vm_area_struct*,int ,int *) ;

vm_fault_t do_swap_page(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct page *page = ((void*)0), *swapcache;
 struct mem_cgroup *memcg;
 swp_entry_t entry;
 pte_t pte;
 int locked;
 int exclusive = 0;
 vm_fault_t ret = 0;

 if (!pte_unmap_same(vma->vm_mm, vmf->pmd, vmf->pte, vmf->orig_pte))
  goto out;

 entry = pte_to_swp_entry(vmf->orig_pte);
 if (unlikely(non_swap_entry(entry))) {
  if (is_migration_entry(entry)) {
   migration_entry_wait(vma->vm_mm, vmf->pmd,
          vmf->address);
  } else if (is_device_private_entry(entry)) {
   vmf->page = device_private_entry_to_page(entry);
   ret = vmf->page->pgmap->ops->migrate_to_ram(vmf);
  } else if (is_hwpoison_entry(entry)) {
   ret = VM_FAULT_HWPOISON;
  } else {
   print_bad_pte(vma, vmf->address, vmf->orig_pte, ((void*)0));
   ret = VM_FAULT_SIGBUS;
  }
  goto out;
 }


 delayacct_set_flag(DELAYACCT_PF_SWAPIN);
 page = lookup_swap_cache(entry, vma, vmf->address);
 swapcache = page;

 if (!page) {
  struct swap_info_struct *si = swp_swap_info(entry);

  if (si->flags & SWP_SYNCHRONOUS_IO &&
    __swap_count(entry) == 1) {

   page = alloc_page_vma(GFP_HIGHUSER_MOVABLE, vma,
       vmf->address);
   if (page) {
    __SetPageLocked(page);
    __SetPageSwapBacked(page);
    set_page_private(page, entry.val);
    lru_cache_add_anon(page);
    swap_readpage(page, 1);
   }
  } else {
   page = swapin_readahead(entry, GFP_HIGHUSER_MOVABLE,
      vmf);
   swapcache = page;
  }

  if (!page) {




   vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd,
     vmf->address, &vmf->ptl);
   if (likely(pte_same(*vmf->pte, vmf->orig_pte)))
    ret = VM_FAULT_OOM;
   delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
   goto unlock;
  }


  ret = VM_FAULT_MAJOR;
  count_vm_event(PGMAJFAULT);
  count_memcg_event_mm(vma->vm_mm, PGMAJFAULT);
 } else if (PageHWPoison(page)) {




  ret = VM_FAULT_HWPOISON;
  delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
  goto out_release;
 }

 locked = lock_page_or_retry(page, vma->vm_mm, vmf->flags);

 delayacct_clear_flag(DELAYACCT_PF_SWAPIN);
 if (!locked) {
  ret |= VM_FAULT_RETRY;
  goto out_release;
 }







 if (unlikely((!PageSwapCache(page) ||
   page_private(page) != entry.val)) && swapcache)
  goto out_page;

 page = ksm_might_need_to_copy(page, vma, vmf->address);
 if (unlikely(!page)) {
  ret = VM_FAULT_OOM;
  page = swapcache;
  goto out_page;
 }

 if (mem_cgroup_try_charge_delay(page, vma->vm_mm, GFP_KERNEL,
     &memcg, 0)) {
  ret = VM_FAULT_OOM;
  goto out_page;
 }




 vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd, vmf->address,
   &vmf->ptl);
 if (unlikely(!pte_same(*vmf->pte, vmf->orig_pte)))
  goto out_nomap;

 if (unlikely(!PageUptodate(page))) {
  ret = VM_FAULT_SIGBUS;
  goto out_nomap;
 }
 inc_mm_counter_fast(vma->vm_mm, MM_ANONPAGES);
 dec_mm_counter_fast(vma->vm_mm, MM_SWAPENTS);
 pte = mk_pte(page, vma->vm_page_prot);
 if ((vmf->flags & FAULT_FLAG_WRITE) && reuse_swap_page(page, ((void*)0))) {
  pte = maybe_mkwrite(pte_mkdirty(pte), vma);
  vmf->flags &= ~FAULT_FLAG_WRITE;
  ret |= VM_FAULT_WRITE;
  exclusive = RMAP_EXCLUSIVE;
 }
 flush_icache_page(vma, page);
 if (pte_swp_soft_dirty(vmf->orig_pte))
  pte = pte_mksoft_dirty(pte);
 set_pte_at(vma->vm_mm, vmf->address, vmf->pte, pte);
 arch_do_swap_page(vma->vm_mm, vma, vmf->address, pte, vmf->orig_pte);
 vmf->orig_pte = pte;


 if (unlikely(page != swapcache && swapcache)) {
  page_add_new_anon_rmap(page, vma, vmf->address, 0);
  mem_cgroup_commit_charge(page, memcg, 0, 0);
  lru_cache_add_active_or_unevictable(page, vma);
 } else {
  do_page_add_anon_rmap(page, vma, vmf->address, exclusive);
  mem_cgroup_commit_charge(page, memcg, 1, 0);
  activate_page(page);
 }

 swap_free(entry);
 if (mem_cgroup_swap_full(page) ||
     (vma->vm_flags & VM_LOCKED) || PageMlocked(page))
  try_to_free_swap(page);
 unlock_page(page);
 if (page != swapcache && swapcache) {
  unlock_page(swapcache);
  put_page(swapcache);
 }

 if (vmf->flags & FAULT_FLAG_WRITE) {
  ret |= do_wp_page(vmf);
  if (ret & VM_FAULT_ERROR)
   ret &= VM_FAULT_ERROR;
  goto out;
 }


 update_mmu_cache(vma, vmf->address, vmf->pte);
unlock:
 pte_unmap_unlock(vmf->pte, vmf->ptl);
out:
 return ret;
out_nomap:
 mem_cgroup_cancel_charge(page, memcg, 0);
 pte_unmap_unlock(vmf->pte, vmf->ptl);
out_page:
 unlock_page(page);
out_release:
 put_page(page);
 if (page != swapcache && swapcache) {
  unlock_page(swapcache);
  put_page(swapcache);
 }
 return ret;
}
