
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_fault_t ;
struct vm_fault {int flags; int ptl; int * pte; int address; int pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int vm_mm; int vm_page_prot; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int pte_t ;


 int FAULT_FLAG_WRITE ;
 int GFP_KERNEL ;
 int MM_ANONPAGES ;
 scalar_t__ VM_FAULT_OOM ;
 scalar_t__ VM_FAULT_SIGBUS ;
 int VM_SHARED ;
 int VM_UFFD_MISSING ;
 int VM_WRITE ;
 int __SetPageUptodate (struct page*) ;
 struct page* alloc_zeroed_user_highpage_movable (struct vm_area_struct*,int ) ;
 int anon_vma_prepare (struct vm_area_struct*) ;
 scalar_t__ check_stable_address_space (int ) ;
 scalar_t__ handle_userfault (struct vm_fault*,int ) ;
 int inc_mm_counter_fast (int ,int ) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 scalar_t__ mem_cgroup_try_charge_delay (struct page*,int ,int ,struct mem_cgroup**,int) ;
 int mk_pte (struct page*,int ) ;
 int mm_forbids_zeropage (int ) ;
 int my_zero_pfn (int ) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,int ,int) ;
 int pfn_pte (int ,int ) ;
 int pmd_trans_unstable (int ) ;
 scalar_t__ pte_alloc (int ,int ) ;
 int pte_mkdirty (int ) ;
 int pte_mkspecial (int ) ;
 int pte_mkwrite (int ) ;
 int pte_none (int ) ;
 void* pte_offset_map_lock (int ,int ,int ,int *) ;
 int pte_unmap_unlock (int *,int ) ;
 int put_page (struct page*) ;
 int set_pte_at (int ,int ,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int update_mmu_cache (struct vm_area_struct*,int ,int *) ;
 scalar_t__ userfaultfd_missing (struct vm_area_struct*) ;

__attribute__((used)) static vm_fault_t do_anonymous_page(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct mem_cgroup *memcg;
 struct page *page;
 vm_fault_t ret = 0;
 pte_t entry;


 if (vma->vm_flags & VM_SHARED)
  return VM_FAULT_SIGBUS;
 if (pte_alloc(vma->vm_mm, vmf->pmd))
  return VM_FAULT_OOM;


 if (unlikely(pmd_trans_unstable(vmf->pmd)))
  return 0;


 if (!(vmf->flags & FAULT_FLAG_WRITE) &&
   !mm_forbids_zeropage(vma->vm_mm)) {
  entry = pte_mkspecial(pfn_pte(my_zero_pfn(vmf->address),
      vma->vm_page_prot));
  vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd,
    vmf->address, &vmf->ptl);
  if (!pte_none(*vmf->pte))
   goto unlock;
  ret = check_stable_address_space(vma->vm_mm);
  if (ret)
   goto unlock;

  if (userfaultfd_missing(vma)) {
   pte_unmap_unlock(vmf->pte, vmf->ptl);
   return handle_userfault(vmf, VM_UFFD_MISSING);
  }
  goto setpte;
 }


 if (unlikely(anon_vma_prepare(vma)))
  goto oom;
 page = alloc_zeroed_user_highpage_movable(vma, vmf->address);
 if (!page)
  goto oom;

 if (mem_cgroup_try_charge_delay(page, vma->vm_mm, GFP_KERNEL, &memcg,
     0))
  goto oom_free_page;






 __SetPageUptodate(page);

 entry = mk_pte(page, vma->vm_page_prot);
 if (vma->vm_flags & VM_WRITE)
  entry = pte_mkwrite(pte_mkdirty(entry));

 vmf->pte = pte_offset_map_lock(vma->vm_mm, vmf->pmd, vmf->address,
   &vmf->ptl);
 if (!pte_none(*vmf->pte))
  goto release;

 ret = check_stable_address_space(vma->vm_mm);
 if (ret)
  goto release;


 if (userfaultfd_missing(vma)) {
  pte_unmap_unlock(vmf->pte, vmf->ptl);
  mem_cgroup_cancel_charge(page, memcg, 0);
  put_page(page);
  return handle_userfault(vmf, VM_UFFD_MISSING);
 }

 inc_mm_counter_fast(vma->vm_mm, MM_ANONPAGES);
 page_add_new_anon_rmap(page, vma, vmf->address, 0);
 mem_cgroup_commit_charge(page, memcg, 0, 0);
 lru_cache_add_active_or_unevictable(page, vma);
setpte:
 set_pte_at(vma->vm_mm, vmf->address, vmf->pte, entry);


 update_mmu_cache(vma, vmf->address, vmf->pte);
unlock:
 pte_unmap_unlock(vmf->pte, vmf->ptl);
 return ret;
release:
 mem_cgroup_cancel_charge(page, memcg, 0);
 put_page(page);
 goto unlock;
oom_free_page:
 put_page(page);
oom:
 return VM_FAULT_OOM;
}
