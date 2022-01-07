
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct orangefs_write_range {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int kfree (struct orangefs_write_range*) ;
 scalar_t__ page_private (struct page*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static void orangefs_freepage(struct page *page)
{
 if (PagePrivate(page)) {
  kfree((struct orangefs_write_range *)page_private(page));
  set_page_private(page, 0);
  ClearPagePrivate(page);
  put_page(page);
 }
}
