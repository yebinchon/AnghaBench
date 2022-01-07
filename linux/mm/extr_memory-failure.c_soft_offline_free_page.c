
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int EBUSY ;
 int dissolve_free_huge_page (struct page*) ;
 int num_poisoned_pages_inc () ;
 scalar_t__ set_hwpoison_free_buddy_page (struct page*) ;

__attribute__((used)) static int soft_offline_free_page(struct page *page)
{
 int rc = dissolve_free_huge_page(page);

 if (!rc) {
  if (set_hwpoison_free_buddy_page(page))
   num_poisoned_pages_inc();
  else
   rc = -EBUSY;
 }
 return rc;
}
