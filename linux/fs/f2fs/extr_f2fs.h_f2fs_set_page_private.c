
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PagePrivate (struct page*) ;
 int SetPagePrivate (struct page*) ;
 int get_page (struct page*) ;
 int set_page_private (struct page*,unsigned long) ;

__attribute__((used)) static inline void f2fs_set_page_private(struct page *page,
      unsigned long data)
{
 if (PagePrivate(page))
  return;

 get_page(page);
 SetPagePrivate(page);
 set_page_private(page, data);
}
