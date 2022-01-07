
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mmu_gather {struct mm_struct* mm; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pmd_t ;


 int ClearPageDirty (struct page*) ;
 unsigned long HPAGE_PMD_SIZE ;
 scalar_t__ PageDirty (struct page*) ;
 int VM_BUG_ON (int) ;
 int get_page (struct page*) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_pmd_migration_entry (int ) ;
 int mark_page_lazyfree (struct page*) ;
 int page_mapcount (struct page*) ;
 scalar_t__ pmd_dirty (int ) ;
 int pmd_mkclean (int ) ;
 int pmd_mkold (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_present (int ) ;
 int * pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 scalar_t__ pmd_young (int ) ;
 int pmdp_invalidate (struct vm_area_struct*,unsigned long,int *) ;
 int put_page (struct page*) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_unlock (int *) ;
 int split_huge_page (struct page*) ;
 scalar_t__ thp_migration_supported () ;
 int tlb_change_page_size (struct mmu_gather*,unsigned long) ;
 int tlb_remove_pmd_tlb_entry (struct mmu_gather*,int *,unsigned long) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

bool madvise_free_huge_pmd(struct mmu_gather *tlb, struct vm_area_struct *vma,
  pmd_t *pmd, unsigned long addr, unsigned long next)
{
 spinlock_t *ptl;
 pmd_t orig_pmd;
 struct page *page;
 struct mm_struct *mm = tlb->mm;
 bool ret = 0;

 tlb_change_page_size(tlb, HPAGE_PMD_SIZE);

 ptl = pmd_trans_huge_lock(pmd, vma);
 if (!ptl)
  goto out_unlocked;

 orig_pmd = *pmd;
 if (is_huge_zero_pmd(orig_pmd))
  goto out;

 if (unlikely(!pmd_present(orig_pmd))) {
  VM_BUG_ON(thp_migration_supported() &&
      !is_pmd_migration_entry(orig_pmd));
  goto out;
 }

 page = pmd_page(orig_pmd);




 if (page_mapcount(page) != 1)
  goto out;

 if (!trylock_page(page))
  goto out;





 if (next - addr != HPAGE_PMD_SIZE) {
  get_page(page);
  spin_unlock(ptl);
  split_huge_page(page);
  unlock_page(page);
  put_page(page);
  goto out_unlocked;
 }

 if (PageDirty(page))
  ClearPageDirty(page);
 unlock_page(page);

 if (pmd_young(orig_pmd) || pmd_dirty(orig_pmd)) {
  pmdp_invalidate(vma, addr, pmd);
  orig_pmd = pmd_mkold(orig_pmd);
  orig_pmd = pmd_mkclean(orig_pmd);

  set_pmd_at(mm, addr, pmd, orig_pmd);
  tlb_remove_pmd_tlb_entry(tlb, pmd, addr);
 }

 mark_page_lazyfree(page);
 ret = 1;
out:
 spin_unlock(ptl);
out_unlocked:
 return ret;
}
