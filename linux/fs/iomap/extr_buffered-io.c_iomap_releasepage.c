
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int iomap_page_release (struct page*) ;

int
iomap_releasepage(struct page *page, gfp_t gfp_mask)
{





 if (PageDirty(page) || PageWriteback(page))
  return 0;
 iomap_page_release(page);
 return 1;
}
