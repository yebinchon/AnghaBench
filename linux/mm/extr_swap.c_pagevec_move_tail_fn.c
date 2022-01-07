
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;


 int ClearPageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int add_page_to_lru_list_tail (struct page*,struct lruvec*,int ) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,int ) ;
 int page_lru (struct page*) ;

__attribute__((used)) static void pagevec_move_tail_fn(struct page *page, struct lruvec *lruvec,
     void *arg)
{
 int *pgmoved = arg;

 if (PageLRU(page) && !PageUnevictable(page)) {
  del_page_from_lru_list(page, lruvec, page_lru(page));
  ClearPageActive(page);
  add_page_to_lru_list_tail(page, lruvec, page_lru(page));
  (*pgmoved)++;
 }
}
