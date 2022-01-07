
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;

__attribute__((used)) static void
__clear_page_buffers(struct page *page)
{
 ClearPagePrivate(page);
 set_page_private(page, 0);
 put_page(page);
}
