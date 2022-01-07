
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {unsigned long address; int ptl; int * pmd; int * pte; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_mm; int vm_page_prot; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int GFP_HIGHUSER_MOVABLE ;
 int GFP_KERNEL ;
 unsigned long HPAGE_PMD_MASK ;
 int HPAGE_PMD_NR ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int MMU_NOTIFY_CLEAR ;
 int PAGE_SIZE ;
 int PageHead (struct page*) ;
 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_FAULT_OOM ;
 int VM_FAULT_WRITE ;
 int __SetPageUptodate (struct page*) ;
 struct page* alloc_page_vma_node (int ,struct vm_area_struct*,unsigned long,int ) ;
 int cond_resched () ;
 int copy_user_highpage (struct page*,struct page*,unsigned long,struct vm_area_struct*) ;
 int kfree (struct page**) ;
 struct page** kmalloc_array (int,int,int ) ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int maybe_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 scalar_t__ mem_cgroup_try_charge_delay (struct page*,int ,int ,struct mem_cgroup**,int) ;
 int mk_pte (struct page*,int ) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_only_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,int ,unsigned long,scalar_t__) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 scalar_t__ page_private (struct page*) ;
 int page_remove_rmap (struct page*,int) ;
 int page_to_nid (struct page*) ;
 int pgtable_trans_huge_withdraw (int ,int *) ;
 int pmd_lock (int ,int *) ;
 int pmd_populate (int ,int *,int ) ;
 int pmd_same (int ,int ) ;
 int pmdp_huge_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 int pte_mkdirty (int ) ;
 int pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,unsigned long) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;
 int smp_wmb () ;
 int spin_unlock (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static vm_fault_t do_huge_pmd_wp_page_fallback(struct vm_fault *vmf,
   pmd_t orig_pmd, struct page *page)
{
 struct vm_area_struct *vma = vmf->vma;
 unsigned long haddr = vmf->address & HPAGE_PMD_MASK;
 struct mem_cgroup *memcg;
 pgtable_t pgtable;
 pmd_t _pmd;
 int i;
 vm_fault_t ret = 0;
 struct page **pages;
 struct mmu_notifier_range range;

 pages = kmalloc_array(HPAGE_PMD_NR, sizeof(struct page *),
         GFP_KERNEL);
 if (unlikely(!pages)) {
  ret |= VM_FAULT_OOM;
  goto out;
 }

 for (i = 0; i < HPAGE_PMD_NR; i++) {
  pages[i] = alloc_page_vma_node(GFP_HIGHUSER_MOVABLE, vma,
            vmf->address, page_to_nid(page));
  if (unlikely(!pages[i] ||
        mem_cgroup_try_charge_delay(pages[i], vma->vm_mm,
         GFP_KERNEL, &memcg, 0))) {
   if (pages[i])
    put_page(pages[i]);
   while (--i >= 0) {
    memcg = (void *)page_private(pages[i]);
    set_page_private(pages[i], 0);
    mem_cgroup_cancel_charge(pages[i], memcg,
      0);
    put_page(pages[i]);
   }
   kfree(pages);
   ret |= VM_FAULT_OOM;
   goto out;
  }
  set_page_private(pages[i], (unsigned long)memcg);
 }

 for (i = 0; i < HPAGE_PMD_NR; i++) {
  copy_user_highpage(pages[i], page + i,
       haddr + PAGE_SIZE * i, vma);
  __SetPageUptodate(pages[i]);
  cond_resched();
 }

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, vma, vma->vm_mm,
    haddr, haddr + HPAGE_PMD_SIZE);
 mmu_notifier_invalidate_range_start(&range);

 vmf->ptl = pmd_lock(vma->vm_mm, vmf->pmd);
 if (unlikely(!pmd_same(*vmf->pmd, orig_pmd)))
  goto out_free_pages;
 VM_BUG_ON_PAGE(!PageHead(page), page);
 pmdp_huge_clear_flush_notify(vma, haddr, vmf->pmd);

 pgtable = pgtable_trans_huge_withdraw(vma->vm_mm, vmf->pmd);
 pmd_populate(vma->vm_mm, &_pmd, pgtable);

 for (i = 0; i < HPAGE_PMD_NR; i++, haddr += PAGE_SIZE) {
  pte_t entry;
  entry = mk_pte(pages[i], vma->vm_page_prot);
  entry = maybe_mkwrite(pte_mkdirty(entry), vma);
  memcg = (void *)page_private(pages[i]);
  set_page_private(pages[i], 0);
  page_add_new_anon_rmap(pages[i], vmf->vma, haddr, 0);
  mem_cgroup_commit_charge(pages[i], memcg, 0, 0);
  lru_cache_add_active_or_unevictable(pages[i], vma);
  vmf->pte = pte_offset_map(&_pmd, haddr);
  VM_BUG_ON(!pte_none(*vmf->pte));
  set_pte_at(vma->vm_mm, haddr, vmf->pte, entry);
  pte_unmap(vmf->pte);
 }
 kfree(pages);

 smp_wmb();
 pmd_populate(vma->vm_mm, vmf->pmd, pgtable);
 page_remove_rmap(page, 1);
 spin_unlock(vmf->ptl);





 mmu_notifier_invalidate_range_only_end(&range);

 ret |= VM_FAULT_WRITE;
 put_page(page);

out:
 return ret;

out_free_pages:
 spin_unlock(vmf->ptl);
 mmu_notifier_invalidate_range_end(&range);
 for (i = 0; i < HPAGE_PMD_NR; i++) {
  memcg = (void *)page_private(pages[i]);
  set_page_private(pages[i], 0);
  mem_cgroup_cancel_charge(pages[i], memcg, 0);
  put_page(pages[i]);
 }
 kfree(pages);
 goto out;
}
