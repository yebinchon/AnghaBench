
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __dump_page (struct page*,char const*) ;
 int dump_page_owner (struct page*) ;

void dump_page(struct page *page, const char *reason)
{
 __dump_page(page, reason);
 dump_page_owner(page);
}
