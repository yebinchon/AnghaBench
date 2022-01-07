
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int ptl; int * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; int vm_page_prot; int anon_vma; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int pmd_t ;
typedef int gfp_t ;


 unsigned long HPAGE_PMD_MASK ;
 int HPAGE_PMD_NR ;
 int HPAGE_PMD_ORDER ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int MMU_NOTIFY_CLEAR ;
 int MM_ANONPAGES ;
 int PageCompound (struct page*) ;
 int PageHead (struct page*) ;
 int THP_FAULT_ALLOC ;
 int THP_FAULT_FALLBACK ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int VM_FAULT_FALLBACK ;
 int VM_FAULT_OOM ;
 int VM_FAULT_WRITE ;
 int __SetPageUptodate (struct page*) ;
 scalar_t__ __transparent_hugepage_enabled (struct vm_area_struct*) ;
 int add_mm_counter (int ,int ,int ) ;
 int alloc_hugepage_direct_gfpmask (struct vm_area_struct*) ;
 struct page* alloc_hugepage_vma (int ,struct vm_area_struct*,unsigned long,int ) ;
 int clear_huge_page (struct page*,unsigned long,int ) ;
 int copy_user_huge_page (struct page*,struct page*,unsigned long,struct vm_area_struct*,int ) ;
 int count_memcg_events (struct mem_cgroup*,int ,int) ;
 int count_vm_event (int ) ;
 int do_huge_pmd_wp_page_fallback (struct vm_fault*,int ,struct page*) ;
 int get_page (struct page*) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 scalar_t__ likely (struct page*) ;
 int lock_page (struct page*) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int maybe_pmd_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 int mem_cgroup_try_charge_delay (struct page*,int ,int ,struct mem_cgroup**,int) ;
 int mk_huge_pmd (struct page*,int ) ;
 int mmu_notifier_invalidate_range_only_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,scalar_t__) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int page_remove_rmap (struct page*,int) ;
 int pmd_lockptr (int ,int *) ;
 int pmd_mkdirty (int ) ;
 int pmd_mkyoung (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_same (int ,int ) ;
 int pmdp_huge_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 scalar_t__ pmdp_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int prep_transhuge_page (struct page*) ;
 int put_page (struct page*) ;
 scalar_t__ reuse_swap_page (struct page*,int *) ;
 int set_pmd_at (int ,unsigned long,int *,int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int split_huge_pmd (struct vm_area_struct*,int *,unsigned long) ;
 int transparent_hugepage_debug_cow () ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int update_mmu_cache_pmd (struct vm_area_struct*,unsigned long,int *) ;

vm_fault_t do_huge_pmd_wp_page(struct vm_fault *vmf, pmd_t orig_pmd)
{
 struct vm_area_struct *vma = vmf->vma;
 struct page *page = ((void*)0), *new_page;
 struct mem_cgroup *memcg;
 unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
 struct mmu_notifier_range range;
 gfp_t huge_gfp;
 vm_fault_t ret = 0;

 vmf->ptl = pmd_lockptr(vma->vm_mm, vmf->pmd);
 VM_BUG_ON_VMA(!vma->anon_vma, vma);
 if (is_huge_zero_pmd(orig_pmd))
  goto alloc;
 spin_lock(vmf->ptl);
 if (unlikely(!pmd_same(*vmf->pmd, orig_pmd)))
  goto out_unlock;

 page = pmd_page(orig_pmd);
 VM_BUG_ON_PAGE(!PageCompound(page) || !PageHead(page), page);




 if (!trylock_page(page)) {
  get_page(page);
  spin_unlock(vmf->ptl);
  lock_page(page);
  spin_lock(vmf->ptl);
  if (unlikely(!pmd_same(*vmf->pmd, orig_pmd))) {
   unlock_page(page);
   put_page(page);
   goto out_unlock;
  }
  put_page(page);
 }
 if (reuse_swap_page(page, ((void*)0))) {
  pmd_t entry;
  entry = pmd_mkyoung(orig_pmd);
  entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
  if (pmdp_set_access_flags(vma, haddr, vmf->pmd, entry, 1))
   update_mmu_cache_pmd(vma, vmf->address, vmf->pmd);
  ret |= VM_FAULT_WRITE;
  unlock_page(page);
  goto out_unlock;
 }
 unlock_page(page);
 get_page(page);
 spin_unlock(vmf->ptl);
alloc:
 if (__transparent_hugepage_enabled(vma) &&
     !transparent_hugepage_debug_cow()) {
  huge_gfp = alloc_hugepage_direct_gfpmask(vma);
  new_page = alloc_hugepage_vma(huge_gfp, vma, haddr, HPAGE_PMD_ORDER);
 } else
  new_page = ((void*)0);

 if (likely(new_page)) {
  prep_transhuge_page(new_page);
 } else {
  if (!page) {
   split_huge_pmd(vma, vmf->pmd, vmf->address);
   ret |= VM_FAULT_FALLBACK;
  } else {
   ret = do_huge_pmd_wp_page_fallback(vmf, orig_pmd, page);
   if (ret & VM_FAULT_OOM) {
    split_huge_pmd(vma, vmf->pmd, vmf->address);
    ret |= VM_FAULT_FALLBACK;
   }
   put_page(page);
  }
  count_vm_event(THP_FAULT_FALLBACK);
  goto out;
 }

 if (unlikely(mem_cgroup_try_charge_delay(new_page, vma->vm_mm,
     huge_gfp, &memcg, 1))) {
  put_page(new_page);
  split_huge_pmd(vma, vmf->pmd, vmf->address);
  if (page)
   put_page(page);
  ret |= VM_FAULT_FALLBACK;
  count_vm_event(THP_FAULT_FALLBACK);
  goto out;
 }

 count_vm_event(THP_FAULT_ALLOC);
 count_memcg_events(memcg, THP_FAULT_ALLOC, 1);

 if (!page)
  clear_huge_page(new_page, vmf->address, HPAGE_PMD_NR);
 else
  copy_user_huge_page(new_page, page, vmf->address,
        vma, HPAGE_PMD_NR);
 __SetPageUptodate(new_page);

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
    haddr, haddr + HPAGE_PMD_SIZE);
 mmu_notifier_invalidate_range_start(&range);

 spin_lock(vmf->ptl);
 if (page)
  put_page(page);
 if (unlikely(!pmd_same(*vmf->pmd, orig_pmd))) {
  spin_unlock(vmf->ptl);
  mem_cgroup_cancel_charge(new_page, memcg, 1);
  put_page(new_page);
  goto out_mn;
 } else {
  pmd_t entry;
  entry = mk_huge_pmd(new_page, vma->vm_page_prot);
  entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
  pmdp_huge_clear_flush_notify(vma, haddr, vmf->pmd);
  page_add_new_anon_rmap(new_page, vma, haddr, 1);
  mem_cgroup_commit_charge(new_page, memcg, 0, 1);
  lru_cache_add_active_or_unevictable(new_page, vma);
  set_pmd_at(vma->vm_mm, haddr, vmf->pmd, entry);
  update_mmu_cache_pmd(vma, vmf->address, vmf->pmd);
  if (!page) {
   add_mm_counter(vma->vm_mm, MM_ANONPAGES, HPAGE_PMD_NR);
  } else {
   VM_BUG_ON_PAGE(!PageHead(page), page);
   page_remove_rmap(page, 1);
   put_page(page);
  }
  ret |= VM_FAULT_WRITE;
 }
 spin_unlock(vmf->ptl);
out_mn:




 mmu_notifier_invalidate_range_only_end(&range);
out:
 return ret;
out_unlock:
 spin_unlock(vmf->ptl);
 return ret;
}
