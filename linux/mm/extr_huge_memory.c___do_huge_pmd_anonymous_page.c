
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int ptl; int * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; int vm_page_prot; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int pmd_t ;
typedef scalar_t__ pgtable_t ;
typedef int gfp_t ;


 unsigned long HPAGE_PMD_MASK ;
 int HPAGE_PMD_NR ;
 int MM_ANONPAGES ;
 int PageCompound (struct page*) ;
 int THP_FAULT_ALLOC ;
 int THP_FAULT_FALLBACK ;
 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_FAULT_FALLBACK ;
 int VM_FAULT_OOM ;
 int VM_UFFD_MISSING ;
 int __SetPageUptodate (struct page*) ;
 int add_mm_counter (int ,int ,int ) ;
 int check_stable_address_space (int ) ;
 int clear_huge_page (struct page*,unsigned long,int ) ;
 int count_memcg_events (struct mem_cgroup*,int ,int) ;
 int count_vm_event (int ) ;
 int handle_userfault (struct vm_fault*,int ) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int maybe_pmd_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 scalar_t__ mem_cgroup_try_charge_delay (struct page*,int ,int ,struct mem_cgroup**,int) ;
 int mk_huge_pmd (struct page*,int ) ;
 int mm_inc_nr_ptes (int ) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int pgtable_trans_huge_deposit (int ,int *,scalar_t__) ;
 int pmd_lock (int ,int *) ;
 int pmd_mkdirty (int ) ;
 int pmd_none (int ) ;
 scalar_t__ pte_alloc_one (int ) ;
 int pte_free (int ,scalar_t__) ;
 int put_page (struct page*) ;
 int set_pmd_at (int ,unsigned long,int *,int ) ;
 int spin_unlock (int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ userfaultfd_missing (struct vm_area_struct*) ;

__attribute__((used)) static vm_fault_t __do_huge_pmd_anonymous_page(struct vm_fault *vmf,
   struct page *page, gfp_t gfp)
{
 struct vm_area_struct *vma = vmf->vma;
 struct mem_cgroup *memcg;
 pgtable_t pgtable;
 unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
 vm_fault_t ret = 0;

 VM_BUG_ON_PAGE(!PageCompound(page), page);

 if (mem_cgroup_try_charge_delay(page, vma->vm_mm, gfp, &memcg, 1)) {
  put_page(page);
  count_vm_event(THP_FAULT_FALLBACK);
  return VM_FAULT_FALLBACK;
 }

 pgtable = pte_alloc_one(vma->vm_mm);
 if (unlikely(!pgtable)) {
  ret = VM_FAULT_OOM;
  goto release;
 }

 clear_huge_page(page, vmf->address, HPAGE_PMD_NR);





 __SetPageUptodate(page);

 vmf->ptl = pmd_lock(vma->vm_mm, vmf->pmd);
 if (unlikely(!pmd_none(*vmf->pmd))) {
  goto unlock_release;
 } else {
  pmd_t entry;

  ret = check_stable_address_space(vma->vm_mm);
  if (ret)
   goto unlock_release;


  if (userfaultfd_missing(vma)) {
   vm_fault_t ret2;

   spin_unlock(vmf->ptl);
   mem_cgroup_cancel_charge(page, memcg, 1);
   put_page(page);
   pte_free(vma->vm_mm, pgtable);
   ret2 = handle_userfault(vmf, VM_UFFD_MISSING);
   VM_BUG_ON(ret2 & VM_FAULT_FALLBACK);
   return ret2;
  }

  entry = mk_huge_pmd(page, vma->vm_page_prot);
  entry = maybe_pmd_mkwrite(pmd_mkdirty(entry), vma);
  page_add_new_anon_rmap(page, vma, haddr, 1);
  mem_cgroup_commit_charge(page, memcg, 0, 1);
  lru_cache_add_active_or_unevictable(page, vma);
  pgtable_trans_huge_deposit(vma->vm_mm, vmf->pmd, pgtable);
  set_pmd_at(vma->vm_mm, haddr, vmf->pmd, entry);
  add_mm_counter(vma->vm_mm, MM_ANONPAGES, HPAGE_PMD_NR);
  mm_inc_nr_ptes(vma->vm_mm);
  spin_unlock(vmf->ptl);
  count_vm_event(THP_FAULT_ALLOC);
  count_memcg_events(memcg, THP_FAULT_ALLOC, 1);
 }

 return 0;
unlock_release:
 spin_unlock(vmf->ptl);
release:
 if (pgtable)
  pte_free(vma->vm_mm, pgtable);
 mem_cgroup_cancel_charge(page, memcg, 1);
 put_page(page);
 return ret;

}
