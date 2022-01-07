
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {int ptl; int * pte; int address; int orig_pte; int pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int vm_page_prot; int vm_mm; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 int NUMA_NO_NODE ;
 scalar_t__ PageCompound (struct page*) ;
 int TNF_MIGRATED ;
 int TNF_MIGRATE_FAIL ;
 int TNF_NO_GROUP ;
 int TNF_SHARED ;
 int VM_SHARED ;
 int migrate_misplaced_page (struct page*,struct vm_area_struct*,int) ;
 int numa_migrate_prep (struct page*,struct vm_area_struct*,int ,int,int*) ;
 int page_cpupid_last (struct page*) ;
 int page_mapcount (struct page*) ;
 int page_to_nid (struct page*) ;
 int pte_lockptr (int ,int ) ;
 int pte_mkwrite (int ) ;
 int pte_mkyoung (int ) ;
 int pte_modify (int ,int ) ;
 int pte_same (int ,int ) ;
 int pte_savedwrite (int ) ;
 int pte_unmap_unlock (int *,int ) ;
 int pte_write (int ) ;
 int ptep_modify_prot_commit (struct vm_area_struct*,int ,int *,int ,int ) ;
 int ptep_modify_prot_start (struct vm_area_struct*,int ,int *) ;
 int put_page (struct page*) ;
 int spin_lock (int ) ;
 int task_numa_fault (int,int,int,int) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (struct vm_area_struct*,int ,int *) ;
 struct page* vm_normal_page (struct vm_area_struct*,int ,int ) ;

__attribute__((used)) static vm_fault_t do_numa_page(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct page *page = ((void*)0);
 int page_nid = NUMA_NO_NODE;
 int last_cpupid;
 int target_nid;
 bool migrated = 0;
 pte_t pte, old_pte;
 bool was_writable = pte_savedwrite(vmf->orig_pte);
 int flags = 0;






 vmf->ptl = pte_lockptr(vma->vm_mm, vmf->pmd);
 spin_lock(vmf->ptl);
 if (unlikely(!pte_same(*vmf->pte, vmf->orig_pte))) {
  pte_unmap_unlock(vmf->pte, vmf->ptl);
  goto out;
 }





 old_pte = ptep_modify_prot_start(vma, vmf->address, vmf->pte);
 pte = pte_modify(old_pte, vma->vm_page_prot);
 pte = pte_mkyoung(pte);
 if (was_writable)
  pte = pte_mkwrite(pte);
 ptep_modify_prot_commit(vma, vmf->address, vmf->pte, old_pte, pte);
 update_mmu_cache(vma, vmf->address, vmf->pte);

 page = vm_normal_page(vma, vmf->address, pte);
 if (!page) {
  pte_unmap_unlock(vmf->pte, vmf->ptl);
  return 0;
 }


 if (PageCompound(page)) {
  pte_unmap_unlock(vmf->pte, vmf->ptl);
  return 0;
 }
 if (!pte_write(pte))
  flags |= TNF_NO_GROUP;





 if (page_mapcount(page) > 1 && (vma->vm_flags & VM_SHARED))
  flags |= TNF_SHARED;

 last_cpupid = page_cpupid_last(page);
 page_nid = page_to_nid(page);
 target_nid = numa_migrate_prep(page, vma, vmf->address, page_nid,
   &flags);
 pte_unmap_unlock(vmf->pte, vmf->ptl);
 if (target_nid == NUMA_NO_NODE) {
  put_page(page);
  goto out;
 }


 migrated = migrate_misplaced_page(page, vma, target_nid);
 if (migrated) {
  page_nid = target_nid;
  flags |= TNF_MIGRATED;
 } else
  flags |= TNF_MIGRATE_FAIL;

out:
 if (page_nid != NUMA_NO_NODE)
  task_numa_fault(last_cpupid, page_nid, 1, flags);
 return 0;
}
