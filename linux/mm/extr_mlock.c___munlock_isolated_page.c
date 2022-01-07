
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageMlocked (struct page*) ;
 int UNEVICTABLE_PGMUNLOCKED ;
 int count_vm_event (int ) ;
 int page_mapcount (struct page*) ;
 int putback_lru_page (struct page*) ;
 int try_to_munlock (struct page*) ;

__attribute__((used)) static void __munlock_isolated_page(struct page *page)
{




 if (page_mapcount(page) > 1)
  try_to_munlock(page);


 if (!PageMlocked(page))
  count_vm_event(UNEVICTABLE_PGMUNLOCKED);

 putback_lru_page(page);
}
