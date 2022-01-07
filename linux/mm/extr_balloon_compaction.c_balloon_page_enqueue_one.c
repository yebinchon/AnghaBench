
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct balloon_dev_info {int dummy; } ;


 int BALLOON_INFLATE ;
 int BUG_ON (int) ;
 int __count_vm_event (int ) ;
 int balloon_page_insert (struct balloon_dev_info*,struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void balloon_page_enqueue_one(struct balloon_dev_info *b_dev_info,
         struct page *page)
{






 BUG_ON(!trylock_page(page));
 balloon_page_insert(b_dev_info, page);
 unlock_page(page);
 __count_vm_event(BALLOON_INFLATE);
}
