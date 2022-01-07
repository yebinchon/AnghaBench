
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int PageAnon (struct page*) ;
 scalar_t__ PageDoubleMap (struct page*) ;
 int PageHuge (struct page*) ;
 int atomic_read (int *) ;
 struct page* compound_head (struct page*) ;
 int * compound_mapcount_ptr (struct page*) ;

int __page_mapcount(struct page *page)
{
 int ret;

 ret = atomic_read(&page->_mapcount) + 1;




 if (!PageAnon(page) && !PageHuge(page))
  return ret;
 page = compound_head(page);
 ret += atomic_read(compound_mapcount_ptr(page)) + 1;
 if (PageDoubleMap(page))
  ret--;
 return ret;
}
