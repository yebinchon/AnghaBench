
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;


 int ClearPageLRU (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,int ) ;
 int get_page (struct page*) ;
 struct lruvec* mem_cgroup_page_lruvec (struct page*,int ) ;
 int page_lru (struct page*) ;
 int page_pgdat (struct page*) ;

__attribute__((used)) static bool __munlock_isolate_lru_page(struct page *page, bool getpage)
{
 if (PageLRU(page)) {
  struct lruvec *lruvec;

  lruvec = mem_cgroup_page_lruvec(page, page_pgdat(page));
  if (getpage)
   get_page(page);
  ClearPageLRU(page);
  del_page_from_lru_list(page, lruvec, page_lru(page));
  return 1;
 }

 return 0;
}
