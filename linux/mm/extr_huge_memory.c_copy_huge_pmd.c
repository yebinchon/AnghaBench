
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pmd_t ;
typedef int * pgtable_t ;


 int EAGAIN ;
 int ENOMEM ;
 int HPAGE_PMD_NR ;
 int MM_ANONPAGES ;
 int PageHead (struct page*) ;
 int SINGLE_DEPTH_NESTING ;
 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int add_mm_counter (struct mm_struct*,int ,int ) ;
 int get_page (struct page*) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_pmd_migration_entry (int ) ;
 int is_swap_pmd (int ) ;
 scalar_t__ is_write_migration_entry (int ) ;
 int make_migration_entry_read (int *) ;
 struct page* mm_get_huge_zero_page (struct mm_struct*) ;
 int mm_inc_nr_ptes (struct mm_struct*) ;
 int page_dup_rmap (struct page*,int) ;
 int pgtable_trans_huge_deposit (struct mm_struct*,int *,int *) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 int * pmd_lockptr (struct mm_struct*,int *) ;
 int pmd_mkold (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_swp_mksoft_dirty (int ) ;
 scalar_t__ pmd_swp_soft_dirty (int ) ;
 int pmd_to_swp_entry (int ) ;
 int pmd_trans_huge (int ) ;
 int pmd_wrprotect (int ) ;
 int pmdp_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int * pte_alloc_one (struct mm_struct*) ;
 int pte_free (struct mm_struct*,int *) ;
 int set_huge_zero_page (int *,struct mm_struct*,struct vm_area_struct*,unsigned long,int *,struct page*) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int swp_entry_to_pmd (int ) ;
 scalar_t__ unlikely (int) ;
 int vma_is_anonymous (struct vm_area_struct*) ;

int copy_huge_pmd(struct mm_struct *dst_mm, struct mm_struct *src_mm,
    pmd_t *dst_pmd, pmd_t *src_pmd, unsigned long addr,
    struct vm_area_struct *vma)
{
 spinlock_t *dst_ptl, *src_ptl;
 struct page *src_page;
 pmd_t pmd;
 pgtable_t pgtable = ((void*)0);
 int ret = -ENOMEM;


 if (!vma_is_anonymous(vma))
  return 0;

 pgtable = pte_alloc_one(dst_mm);
 if (unlikely(!pgtable))
  goto out;

 dst_ptl = pmd_lock(dst_mm, dst_pmd);
 src_ptl = pmd_lockptr(src_mm, src_pmd);
 spin_lock_nested(src_ptl, SINGLE_DEPTH_NESTING);

 ret = -EAGAIN;
 pmd = *src_pmd;
 if (unlikely(!pmd_trans_huge(pmd))) {
  pte_free(dst_mm, pgtable);
  goto out_unlock;
 }





 if (is_huge_zero_pmd(pmd)) {
  struct page *zero_page;





  zero_page = mm_get_huge_zero_page(dst_mm);
  set_huge_zero_page(pgtable, dst_mm, vma, addr, dst_pmd,
    zero_page);
  ret = 0;
  goto out_unlock;
 }

 src_page = pmd_page(pmd);
 VM_BUG_ON_PAGE(!PageHead(src_page), src_page);
 get_page(src_page);
 page_dup_rmap(src_page, 1);
 add_mm_counter(dst_mm, MM_ANONPAGES, HPAGE_PMD_NR);
 mm_inc_nr_ptes(dst_mm);
 pgtable_trans_huge_deposit(dst_mm, dst_pmd, pgtable);

 pmdp_set_wrprotect(src_mm, addr, src_pmd);
 pmd = pmd_mkold(pmd_wrprotect(pmd));
 set_pmd_at(dst_mm, addr, dst_pmd, pmd);

 ret = 0;
out_unlock:
 spin_unlock(src_ptl);
 spin_unlock(dst_ptl);
out:
 return ret;
}
