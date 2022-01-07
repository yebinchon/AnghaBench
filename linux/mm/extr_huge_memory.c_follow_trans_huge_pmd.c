
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; struct mm_struct* vm_mm; } ;
struct page {scalar_t__ mapping; } ;
struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 int EFAULT ;
 struct page* ERR_PTR (int ) ;
 unsigned int FOLL_DUMP ;
 unsigned int FOLL_GET ;
 unsigned int FOLL_MLOCK ;
 unsigned int FOLL_NUMA ;
 unsigned int FOLL_TOUCH ;
 unsigned int FOLL_WRITE ;
 unsigned long HPAGE_PMD_MASK ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PageAnon (struct page*) ;
 int PageCompound (struct page*) ;
 scalar_t__ PageDoubleMap (struct page*) ;
 int PageHead (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_LOCKED ;
 int assert_spin_locked (int ) ;
 int can_follow_write_pmd (int ,unsigned int) ;
 int compound_mapcount (struct page*) ;
 int get_page (struct page*) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_zone_device_page (struct page*) ;
 int lru_add_drain () ;
 int mlock_vma_page (struct page*) ;
 int pmd_lockptr (struct mm_struct*,int *) ;
 struct page* pmd_page (int ) ;
 scalar_t__ pmd_protnone (int ) ;
 int touch_pmd (struct vm_area_struct*,unsigned long,int *,unsigned int) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

struct page *follow_trans_huge_pmd(struct vm_area_struct *vma,
       unsigned long addr,
       pmd_t *pmd,
       unsigned int flags)
{
 struct mm_struct *mm = vma->vm_mm;
 struct page *page = ((void*)0);

 assert_spin_locked(pmd_lockptr(mm, pmd));

 if (flags & FOLL_WRITE && !can_follow_write_pmd(*pmd, flags))
  goto out;


 if ((flags & FOLL_DUMP) && is_huge_zero_pmd(*pmd))
  return ERR_PTR(-EFAULT);


 if ((flags & FOLL_NUMA) && pmd_protnone(*pmd))
  goto out;

 page = pmd_page(*pmd);
 VM_BUG_ON_PAGE(!PageHead(page) && !is_zone_device_page(page), page);
 if (flags & FOLL_TOUCH)
  touch_pmd(vma, addr, pmd, flags);
 if ((flags & FOLL_MLOCK) && (vma->vm_flags & VM_LOCKED)) {
  if (PageAnon(page) && compound_mapcount(page) != 1)
   goto skip_mlock;
  if (PageDoubleMap(page) || !page->mapping)
   goto skip_mlock;
  if (!trylock_page(page))
   goto skip_mlock;
  lru_add_drain();
  if (page->mapping && !PageDoubleMap(page))
   mlock_vma_page(page);
  unlock_page(page);
 }
skip_mlock:
 page += (addr & ~HPAGE_PMD_MASK) >> PAGE_SHIFT;
 VM_BUG_ON_PAGE(!PageCompound(page) && !is_zone_device_page(page), page);
 if (flags & FOLL_GET)
  get_page(page);

out:
 return page;
}
