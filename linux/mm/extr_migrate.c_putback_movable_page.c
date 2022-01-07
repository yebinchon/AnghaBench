
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* putback_page ) (struct page*) ;} ;


 int PageIsolated (struct page*) ;
 int PageLocked (struct page*) ;
 int PageMovable (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __ClearPageIsolated (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int stub1 (struct page*) ;

void putback_movable_page(struct page *page)
{
 struct address_space *mapping;

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_PAGE(!PageMovable(page), page);
 VM_BUG_ON_PAGE(!PageIsolated(page), page);

 mapping = page_mapping(page);
 mapping->a_ops->putback_page(page);
 __ClearPageIsolated(page);
}
