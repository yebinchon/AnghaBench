
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int ptl; int * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; int vm_page_prot; } ;
struct page {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef int pmd_t ;


 int BUG_ON (int) ;
 unsigned long HPAGE_PMD_MASK ;
 int HPAGE_PMD_NR ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int NUMA_HINT_FAULTS ;
 int NUMA_HINT_FAULTS_LOCAL ;
 int NUMA_NO_NODE ;
 int PageLocked (struct page*) ;
 int TNF_FAULT_LOCAL ;
 int TNF_MIGRATED ;
 int TNF_MIGRATE_FAIL ;
 int TNF_NO_GROUP ;
 int count_vm_numa_event (int ) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,scalar_t__) ;
 int get_page (struct page*) ;
 int get_page_unless_zero (struct page*) ;
 int is_huge_zero_page (struct page*) ;
 int migrate_misplaced_transhuge_page (int ,struct vm_area_struct*,int *,int ,unsigned long,struct page*,int) ;
 scalar_t__ mm_tlb_flush_pending (int ) ;
 int mmu_notifier_invalidate_range (int ,unsigned long,scalar_t__) ;
 int mpol_misplaced (struct page*,struct vm_area_struct*,unsigned long) ;
 int numa_node_id () ;
 int page_cpupid_last (struct page*) ;
 struct anon_vma* page_lock_anon_vma_read (struct page*) ;
 int page_to_nid (struct page*) ;
 int page_unlock_anon_vma_read (struct anon_vma*) ;
 int pmd_lock (int ,int *) ;
 int pmd_mkwrite (int ) ;
 int pmd_mkyoung (int ) ;
 int pmd_modify (int ,int ) ;
 struct page* pmd_page (int ) ;
 int pmd_same (int ,int ) ;
 int pmd_savedwrite (int ) ;
 int pmd_trans_migrating (int ) ;
 int put_and_wait_on_page_locked (struct page*) ;
 int put_page (struct page*) ;
 int set_pmd_at (int ,unsigned long,int *,int ) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int task_numa_fault (int,int,int ,int) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int update_mmu_cache_pmd (struct vm_area_struct*,unsigned long,int *) ;

vm_fault_t do_huge_pmd_numa_page(struct vm_fault *vmf, pmd_t pmd)
{
 struct vm_area_struct *vma = vmf->vma;
 struct anon_vma *anon_vma = ((void*)0);
 struct page *page;
 unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
 int page_nid = NUMA_NO_NODE, this_nid = numa_node_id();
 int target_nid, last_cpupid = -1;
 bool page_locked;
 bool migrated = 0;
 bool was_writable;
 int flags = 0;

 vmf->ptl = pmd_lock(vma->vm_mm, vmf->pmd);
 if (unlikely(!pmd_same(pmd, *vmf->pmd)))
  goto out_unlock;






 if (unlikely(pmd_trans_migrating(*vmf->pmd))) {
  page = pmd_page(*vmf->pmd);
  if (!get_page_unless_zero(page))
   goto out_unlock;
  spin_unlock(vmf->ptl);
  put_and_wait_on_page_locked(page);
  goto out;
 }

 page = pmd_page(pmd);
 BUG_ON(is_huge_zero_page(page));
 page_nid = page_to_nid(page);
 last_cpupid = page_cpupid_last(page);
 count_vm_numa_event(NUMA_HINT_FAULTS);
 if (page_nid == this_nid) {
  count_vm_numa_event(NUMA_HINT_FAULTS_LOCAL);
  flags |= TNF_FAULT_LOCAL;
 }


 if (!pmd_savedwrite(pmd))
  flags |= TNF_NO_GROUP;





 page_locked = trylock_page(page);
 target_nid = mpol_misplaced(page, vma, haddr);
 if (target_nid == NUMA_NO_NODE) {

  if (page_locked)
   goto clear_pmdnuma;
 }


 if (!page_locked) {
  page_nid = NUMA_NO_NODE;
  if (!get_page_unless_zero(page))
   goto out_unlock;
  spin_unlock(vmf->ptl);
  put_and_wait_on_page_locked(page);
  goto out;
 }





 get_page(page);
 spin_unlock(vmf->ptl);
 anon_vma = page_lock_anon_vma_read(page);


 spin_lock(vmf->ptl);
 if (unlikely(!pmd_same(pmd, *vmf->pmd))) {
  unlock_page(page);
  put_page(page);
  page_nid = NUMA_NO_NODE;
  goto out_unlock;
 }


 if (unlikely(!anon_vma)) {
  put_page(page);
  page_nid = NUMA_NO_NODE;
  goto clear_pmdnuma;
 }
 if (mm_tlb_flush_pending(vma->vm_mm)) {
  flush_tlb_range(vma, haddr, haddr + HPAGE_PMD_SIZE);
  mmu_notifier_invalidate_range(vma->vm_mm, haddr,
           haddr + HPAGE_PMD_SIZE);
 }





 spin_unlock(vmf->ptl);

 migrated = migrate_misplaced_transhuge_page(vma->vm_mm, vma,
    vmf->pmd, pmd, vmf->address, page, target_nid);
 if (migrated) {
  flags |= TNF_MIGRATED;
  page_nid = target_nid;
 } else
  flags |= TNF_MIGRATE_FAIL;

 goto out;
clear_pmdnuma:
 BUG_ON(!PageLocked(page));
 was_writable = pmd_savedwrite(pmd);
 pmd = pmd_modify(pmd, vma->vm_page_prot);
 pmd = pmd_mkyoung(pmd);
 if (was_writable)
  pmd = pmd_mkwrite(pmd);
 set_pmd_at(vma->vm_mm, haddr, vmf->pmd, pmd);
 update_mmu_cache_pmd(vma, vmf->address, vmf->pmd);
 unlock_page(page);
out_unlock:
 spin_unlock(vmf->ptl);

out:
 if (anon_vma)
  page_unlock_anon_vma_read(anon_vma);

 if (page_nid != NUMA_NO_NODE)
  task_numa_fault(last_cpupid, page_nid, HPAGE_PMD_NR,
    flags);

 return 0;
}
