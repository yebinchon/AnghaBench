
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int __ClearPageMovable (struct page*) ;
 int __free_page (struct page*) ;
 int lock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void free_z3fold_page(struct page *page, bool headless)
{
 if (!headless) {
  lock_page(page);
  __ClearPageMovable(page);
  unlock_page(page);
 }
 ClearPagePrivate(page);
 __free_page(page);
}
