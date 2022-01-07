
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_page_prot; int anon_vma; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int mmap_sem; } ;
struct mem_cgroup {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgtable_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 unsigned long HPAGE_PMD_MASK ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int MMU_NOTIFY_CLEAR ;
 int SCAN_ALLOC_HUGE_PAGE_FAIL ;
 int SCAN_ANY_PROCESS ;
 int SCAN_CGROUP_CHARGE_FAIL ;
 int SCAN_FAIL ;
 int SCAN_PMD_NULL ;
 int SCAN_SUCCEED ;
 int THP_COLLAPSE_ALLOC ;
 int VM_BUG_ON (unsigned long) ;
 int __GFP_THISNODE ;
 int __SetPageUptodate (struct page*) ;
 int __collapse_huge_page_copy (int *,struct page*,struct vm_area_struct*,unsigned long,int *) ;
 int __collapse_huge_page_isolate (struct vm_area_struct*,unsigned long,int *) ;
 int __collapse_huge_page_swapin (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int) ;
 int alloc_hugepage_khugepaged_gfpmask () ;
 int anon_vma_lock_write (int ) ;
 int anon_vma_unlock_write (int ) ;
 int count_memcg_events (struct mem_cgroup*,int ,int) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int hugepage_vma_revalidate (struct mm_struct*,unsigned long,struct vm_area_struct**) ;
 struct page* khugepaged_alloc_page (struct page**,int,int) ;
 int khugepaged_pages_collapsed ;
 int lru_cache_add_active_or_unevictable (struct page*,struct vm_area_struct*) ;
 int maybe_pmd_mkwrite (int ,struct vm_area_struct*) ;
 int mem_cgroup_cancel_charge (struct page*,struct mem_cgroup*,int) ;
 int mem_cgroup_commit_charge (struct page*,struct mem_cgroup*,int,int) ;
 int mem_cgroup_try_charge (struct page*,struct mm_struct*,int,struct mem_cgroup**,int) ;
 int mk_huge_pmd (struct page*,int ) ;
 int * mm_find_pmd (struct mm_struct*,unsigned long) ;
 int mmget_still_valid (struct mm_struct*) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,int *,struct mm_struct*,unsigned long,scalar_t__) ;
 int page_add_new_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int) ;
 int pgtable_trans_huge_deposit (struct mm_struct*,int *,int ) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 int pmd_mkdirty (int ) ;
 int pmd_none (int ) ;
 int pmd_pgtable (int ) ;
 int pmd_populate (struct mm_struct*,int *,int ) ;
 int pmdp_collapse_flush (struct vm_area_struct*,unsigned long,int *) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int smp_wmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_mm_collapse_huge_page (struct mm_struct*,int,int) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int update_mmu_cache_pmd (struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static void collapse_huge_page(struct mm_struct *mm,
       unsigned long address,
       struct page **hpage,
       int node, int referenced)
{
 pmd_t *pmd, _pmd;
 pte_t *pte;
 pgtable_t pgtable;
 struct page *new_page;
 spinlock_t *pmd_ptl, *pte_ptl;
 int isolated = 0, result = 0;
 struct mem_cgroup *memcg;
 struct vm_area_struct *vma;
 struct mmu_notifier_range range;
 gfp_t gfp;

 VM_BUG_ON(address & ~HPAGE_PMD_MASK);


 gfp = alloc_hugepage_khugepaged_gfpmask() | __GFP_THISNODE;







 up_read(&mm->mmap_sem);
 new_page = khugepaged_alloc_page(hpage, gfp, node);
 if (!new_page) {
  result = SCAN_ALLOC_HUGE_PAGE_FAIL;
  goto out_nolock;
 }

 if (unlikely(mem_cgroup_try_charge(new_page, mm, gfp, &memcg, 1))) {
  result = SCAN_CGROUP_CHARGE_FAIL;
  goto out_nolock;
 }

 down_read(&mm->mmap_sem);
 result = hugepage_vma_revalidate(mm, address, &vma);
 if (result) {
  mem_cgroup_cancel_charge(new_page, memcg, 1);
  up_read(&mm->mmap_sem);
  goto out_nolock;
 }

 pmd = mm_find_pmd(mm, address);
 if (!pmd) {
  result = SCAN_PMD_NULL;
  mem_cgroup_cancel_charge(new_page, memcg, 1);
  up_read(&mm->mmap_sem);
  goto out_nolock;
 }






 if (!__collapse_huge_page_swapin(mm, vma, address, pmd, referenced)) {
  mem_cgroup_cancel_charge(new_page, memcg, 1);
  up_read(&mm->mmap_sem);
  goto out_nolock;
 }

 up_read(&mm->mmap_sem);





 down_write(&mm->mmap_sem);
 result = SCAN_ANY_PROCESS;
 if (!mmget_still_valid(mm))
  goto out;
 result = hugepage_vma_revalidate(mm, address, &vma);
 if (result)
  goto out;

 if (mm_find_pmd(mm, address) != pmd)
  goto out;

 anon_vma_lock_write(vma->anon_vma);

 mmu_notifier_range_init(&range, MMU_NOTIFY_CLEAR, 0, ((void*)0), mm,
    address, address + HPAGE_PMD_SIZE);
 mmu_notifier_invalidate_range_start(&range);

 pte = pte_offset_map(pmd, address);
 pte_ptl = pte_lockptr(mm, pmd);

 pmd_ptl = pmd_lock(mm, pmd);






 _pmd = pmdp_collapse_flush(vma, address, pmd);
 spin_unlock(pmd_ptl);
 mmu_notifier_invalidate_range_end(&range);

 spin_lock(pte_ptl);
 isolated = __collapse_huge_page_isolate(vma, address, pte);
 spin_unlock(pte_ptl);

 if (unlikely(!isolated)) {
  pte_unmap(pte);
  spin_lock(pmd_ptl);
  BUG_ON(!pmd_none(*pmd));





  pmd_populate(mm, pmd, pmd_pgtable(_pmd));
  spin_unlock(pmd_ptl);
  anon_vma_unlock_write(vma->anon_vma);
  result = SCAN_FAIL;
  goto out;
 }





 anon_vma_unlock_write(vma->anon_vma);

 __collapse_huge_page_copy(pte, new_page, vma, address, pte_ptl);
 pte_unmap(pte);
 __SetPageUptodate(new_page);
 pgtable = pmd_pgtable(_pmd);

 _pmd = mk_huge_pmd(new_page, vma->vm_page_prot);
 _pmd = maybe_pmd_mkwrite(pmd_mkdirty(_pmd), vma);






 smp_wmb();

 spin_lock(pmd_ptl);
 BUG_ON(!pmd_none(*pmd));
 page_add_new_anon_rmap(new_page, vma, address, 1);
 mem_cgroup_commit_charge(new_page, memcg, 0, 1);
 count_memcg_events(memcg, THP_COLLAPSE_ALLOC, 1);
 lru_cache_add_active_or_unevictable(new_page, vma);
 pgtable_trans_huge_deposit(mm, pmd, pgtable);
 set_pmd_at(mm, address, pmd, _pmd);
 update_mmu_cache_pmd(vma, address, pmd);
 spin_unlock(pmd_ptl);

 *hpage = ((void*)0);

 khugepaged_pages_collapsed++;
 result = SCAN_SUCCEED;
out_up_write:
 up_write(&mm->mmap_sem);
out_nolock:
 trace_mm_collapse_huge_page(mm, isolated, result);
 return;
out:
 mem_cgroup_cancel_charge(new_page, memcg, 1);
 goto out_up_write;
}
