
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int total_mapcount (struct page*) ;

__attribute__((used)) static int page_mapcount_is_zero(struct page *page)
{
 return !total_mapcount(page);
}
