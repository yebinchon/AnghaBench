
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int PageCompound (struct page*) ;
 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ atomic_read (int *) ;
 struct page* compound_head (struct page*) ;
 int * compound_mapcount_ptr (struct page*) ;
 int compound_nr (struct page*) ;
 scalar_t__ likely (int) ;

bool page_mapped(struct page *page)
{
 int i;

 if (likely(!PageCompound(page)))
  return atomic_read(&page->_mapcount) >= 0;
 page = compound_head(page);
 if (atomic_read(compound_mapcount_ptr(page)) >= 0)
  return 1;
 if (PageHuge(page))
  return 0;
 for (i = 0; i < compound_nr(page); i++) {
  if (atomic_read(&page[i]._mapcount) >= 0)
   return 1;
 }
 return 0;
}
