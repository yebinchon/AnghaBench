
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_fault_t ;
struct vm_fault {int flags; int * pte; int address; int * pmd; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int vm_mm; int vm_page_prot; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int pte_t ;


 int CONFIG_TRANSPARENT_HUGE_PAGECACHE ;
 int FAULT_FLAG_WRITE ;
 scalar_t__ IS_ENABLED (int ) ;
 int MM_ANONPAGES ;
 scalar_t__ PageTransCompound (struct page*) ;
 int VM_BUG_ON_PAGE (struct mem_cgroup*,struct page*) ;
 scalar_t__ VM_FAULT_FALLBACK ;
 scalar_t__ VM_FAULT_NOPAGE ;
 int VM_SHARED ;
 scalar_t__ do_set_pmd (struct vm_fault*,struct page*) ;
 int flush_icache_page (struct vm_area_struct*,struct page*) ;
 int inc_mm_counter_fast (int ,int ) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int maybe_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 int mk_pte (struct page*,int ) ;
 int mm_counter_file (struct page*) ;
 int page_add_file_rmap (struct page*,int) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,int ,int) ;
 scalar_t__ pmd_none (int ) ;
 scalar_t__ pte_alloc_one_map (struct vm_fault*) ;
 int pte_mkdirty (int ) ;
 int pte_none (int ) ;
 int set_pte_at (int ,int ,int *,int ) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (struct vm_area_struct*,int ,int *) ;

vm_fault_t alloc_set_pte(struct vm_fault *vmf, struct mem_cgroup *memcg,
  struct page *page)
{
 struct vm_area_struct *vma = vmf->vma;
 bool write = vmf->flags & FAULT_FLAG_WRITE;
 pte_t entry;
 vm_fault_t ret;

 if (pmd_none(*vmf->pmd) && PageTransCompound(page) &&
   IS_ENABLED(CONFIG_TRANSPARENT_HUGE_PAGECACHE)) {

  VM_BUG_ON_PAGE(memcg, page);

  ret = do_set_pmd(vmf, page);
  if (ret != VM_FAULT_FALLBACK)
   return ret;
 }

 if (!vmf->pte) {
  ret = pte_alloc_one_map(vmf);
  if (ret)
   return ret;
 }


 if (unlikely(!pte_none(*vmf->pte)))
  return VM_FAULT_NOPAGE;

 flush_icache_page(vma, page);
 entry = mk_pte(page, vma->vm_page_prot);
 if (write)
  entry = maybe_mkwrite(pte_mkdirty(entry), vma);

 if (write && !(vma->vm_flags & VM_SHARED)) {
  inc_mm_counter_fast(vma->vm_mm, MM_ANONPAGES);
  page_add_new_anon_rmap(page, vma, vmf->address, 0);
  mem_cgroup_commit_charge(page, memcg, 0, 0);
  lru_cache_add_active_or_unevictable(page, vma);
 } else {
  inc_mm_counter_fast(vma->vm_mm, mm_counter_file(page));
  page_add_file_rmap(page, 0);
 }
 set_pte_at(vma->vm_mm, vmf->address, vmf->pte, entry);


 update_mmu_cache(vma, vmf->address, vmf->pte);

 return 0;
}
