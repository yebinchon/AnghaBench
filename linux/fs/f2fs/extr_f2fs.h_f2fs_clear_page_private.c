
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int PagePrivate (struct page*) ;
 int f2fs_put_page (struct page*,int ) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static inline void f2fs_clear_page_private(struct page *page)
{
 if (!PagePrivate(page))
  return;

 set_page_private(page, 0);
 ClearPagePrivate(page);
 f2fs_put_page(page, 0);
}
