
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct dev_pagemap {int dummy; } ;
typedef int pmd_t ;


 int EEXIST ;
 int EFAULT ;
 struct page* ERR_PTR (int ) ;
 int FOLL_COW ;
 int FOLL_GET ;
 int FOLL_TOUCH ;
 int FOLL_WRITE ;
 unsigned long PAGE_SHIFT ;
 unsigned long PMD_MASK ;
 int WARN_ONCE (int,char*) ;
 int assert_spin_locked (int ) ;
 struct dev_pagemap* get_dev_pagemap (unsigned long,struct dev_pagemap*) ;
 int get_page (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pmd_devmap (int ) ;
 int pmd_lockptr (struct mm_struct*,int *) ;
 unsigned long pmd_pfn (int ) ;
 scalar_t__ pmd_present (int ) ;
 int pmd_write (int ) ;
 int touch_pmd (struct vm_area_struct*,unsigned long,int *,int) ;

struct page *follow_devmap_pmd(struct vm_area_struct *vma, unsigned long addr,
  pmd_t *pmd, int flags, struct dev_pagemap **pgmap)
{
 unsigned long pfn = pmd_pfn(*pmd);
 struct mm_struct *mm = vma->vm_mm;
 struct page *page;

 assert_spin_locked(pmd_lockptr(mm, pmd));





 WARN_ONCE(flags & FOLL_COW, "mm: In follow_devmap_pmd with FOLL_COW set");

 if (flags & FOLL_WRITE && !pmd_write(*pmd))
  return ((void*)0);

 if (pmd_present(*pmd) && pmd_devmap(*pmd))
            ;
 else
  return ((void*)0);

 if (flags & FOLL_TOUCH)
  touch_pmd(vma, addr, pmd, flags);





 if (!(flags & FOLL_GET))
  return ERR_PTR(-EEXIST);

 pfn += (addr & ~PMD_MASK) >> PAGE_SHIFT;
 *pgmap = get_dev_pagemap(pfn, *pgmap);
 if (!*pgmap)
  return ERR_PTR(-EFAULT);
 page = pfn_to_page(pfn);
 get_page(page);

 return page;
}
