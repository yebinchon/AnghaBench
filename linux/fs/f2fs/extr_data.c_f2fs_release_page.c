
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ IS_ATOMIC_WRITTEN_PAGE (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 int clear_cold_data (struct page*) ;
 int f2fs_clear_page_private (struct page*) ;

int f2fs_release_page(struct page *page, gfp_t wait)
{

 if (PageDirty(page))
  return 0;


 if (IS_ATOMIC_WRITTEN_PAGE(page))
  return 0;

 clear_cold_data(page);
 f2fs_clear_page_private(page);
 return 1;
}
