
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int page_mapped (struct page*) ;

__attribute__((used)) static int page_not_mapped(struct page *page)
{
 return !page_mapped(page);
}
