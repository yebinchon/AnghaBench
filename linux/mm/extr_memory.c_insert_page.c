
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgprot_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageSlab (struct page*) ;
 int flush_dcache_page (struct page*) ;
 int * get_locked_pte (struct mm_struct*,unsigned long,int **) ;
 int get_page (struct page*) ;
 int inc_mm_counter_fast (struct mm_struct*,int ) ;
 int mk_pte (struct page*,int ) ;
 int mm_counter_file (struct page*) ;
 int page_add_file_rmap (struct page*,int) ;
 scalar_t__ page_has_type (struct page*) ;
 int pte_none (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

__attribute__((used)) static int insert_page(struct vm_area_struct *vma, unsigned long addr,
   struct page *page, pgprot_t prot)
{
 struct mm_struct *mm = vma->vm_mm;
 int retval;
 pte_t *pte;
 spinlock_t *ptl;

 retval = -EINVAL;
 if (PageAnon(page) || PageSlab(page) || page_has_type(page))
  goto out;
 retval = -ENOMEM;
 flush_dcache_page(page);
 pte = get_locked_pte(mm, addr, &ptl);
 if (!pte)
  goto out;
 retval = -EBUSY;
 if (!pte_none(*pte))
  goto out_unlock;


 get_page(page);
 inc_mm_counter_fast(mm, mm_counter_file(page));
 page_add_file_rmap(page, 0);
 set_pte_at(mm, addr, pte, mk_pte(page, prot));

 retval = 0;
out_unlock:
 pte_unmap_unlock(pte, ptl);
out:
 return retval;
}
