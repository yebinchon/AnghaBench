
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int HPAGE_PMD_NR ;
 int PageAnon (struct page*) ;
 int PageCompound (struct page*) ;
 scalar_t__ PageDoubleMap (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 int PageTail (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int atomic_read (int *) ;
 int compound_mapcount (struct page*) ;
 scalar_t__ likely (int) ;

int total_mapcount(struct page *page)
{
 int i, compound, ret;

 VM_BUG_ON_PAGE(PageTail(page), page);

 if (likely(!PageCompound(page)))
  return atomic_read(&page->_mapcount) + 1;

 compound = compound_mapcount(page);
 if (PageHuge(page))
  return compound;
 ret = compound;
 for (i = 0; i < HPAGE_PMD_NR; i++)
  ret += atomic_read(&page[i]._mapcount) + 1;

 if (!PageAnon(page))
  return ret - compound * HPAGE_PMD_NR;
 if (PageDoubleMap(page))
  ret -= HPAGE_PMD_NR;
 return ret;
}
