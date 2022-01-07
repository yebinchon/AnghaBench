
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int HPAGE_PMD_NR ;
 scalar_t__ PageDoubleMap (struct page*) ;
 int PageHuge (struct page*) ;
 int PageTransCompound (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int atomic_read (int *) ;
 struct page* compound_head (struct page*) ;
 int compound_mapcount (struct page*) ;
 scalar_t__ likely (int) ;
 int max (int,int) ;

int page_trans_huge_mapcount(struct page *page, int *total_mapcount)
{
 int i, ret, _total_mapcount, mapcount;


 VM_BUG_ON_PAGE(PageHuge(page), page);

 if (likely(!PageTransCompound(page))) {
  mapcount = atomic_read(&page->_mapcount) + 1;
  if (total_mapcount)
   *total_mapcount = mapcount;
  return mapcount;
 }

 page = compound_head(page);

 _total_mapcount = ret = 0;
 for (i = 0; i < HPAGE_PMD_NR; i++) {
  mapcount = atomic_read(&page[i]._mapcount) + 1;
  ret = max(ret, mapcount);
  _total_mapcount += mapcount;
 }
 if (PageDoubleMap(page)) {
  ret -= 1;
  _total_mapcount -= HPAGE_PMD_NR;
 }
 mapcount = compound_mapcount(page);
 ret += mapcount;
 _total_mapcount += mapcount;
 if (total_mapcount)
  *total_mapcount = _total_mapcount;
 return ret;
}
