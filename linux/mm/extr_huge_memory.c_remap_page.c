
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int HPAGE_PMD_NR ;
 scalar_t__ PageTransHuge (struct page*) ;
 int remove_migration_ptes (struct page*,struct page*,int) ;

__attribute__((used)) static void remap_page(struct page *page)
{
 int i;
 if (PageTransHuge(page)) {
  remove_migration_ptes(page, page, 1);
 } else {
  for (i = 0; i < HPAGE_PMD_NR; i++)
   remove_migration_ptes(page + i, page + i, 1);
 }
}
