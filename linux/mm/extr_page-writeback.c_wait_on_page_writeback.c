
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PG_writeback ;
 scalar_t__ PageWriteback (struct page*) ;
 int page_mapping (struct page*) ;
 int trace_wait_on_page_writeback (struct page*,int ) ;
 int wait_on_page_bit (struct page*,int ) ;

void wait_on_page_writeback(struct page *page)
{
 if (PageWriteback(page)) {
  trace_wait_on_page_writeback(page, page_mapping(page));
  wait_on_page_bit(page, PG_writeback);
 }
}
