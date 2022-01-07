
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int PageWriteback (struct page*) ;
 int WARN_ON_ONCE (int ) ;
 int cancel_dirty_page (struct page*) ;
 int iomap_page_release (struct page*) ;

void
iomap_invalidatepage(struct page *page, unsigned int offset, unsigned int len)
{




 if (offset == 0 && len == PAGE_SIZE) {
  WARN_ON_ONCE(PageWriteback(page));
  cancel_dirty_page(page);
  iomap_page_release(page);
 }
}
