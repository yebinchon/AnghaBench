
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int isolate_mode_t ;
struct TYPE_2__ {int (* isolate_page ) (struct page*,int ) ;} ;


 int EBUSY ;
 scalar_t__ PageIsolated (struct page*) ;
 int PageMovable (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int WARN_ON_ONCE (scalar_t__) ;
 int __PageMovable (struct page*) ;
 int __SetPageIsolated (struct page*) ;
 int get_page_unless_zero (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int put_page (struct page*) ;
 int stub1 (struct page*,int ) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

int isolate_movable_page(struct page *page, isolate_mode_t mode)
{
 struct address_space *mapping;
 if (unlikely(!get_page_unless_zero(page)))
  goto out;






 if (unlikely(!__PageMovable(page)))
  goto out_putpage;
 if (unlikely(!trylock_page(page)))
  goto out_putpage;

 if (!PageMovable(page) || PageIsolated(page))
  goto out_no_isolated;

 mapping = page_mapping(page);
 VM_BUG_ON_PAGE(!mapping, page);

 if (!mapping->a_ops->isolate_page(page, mode))
  goto out_no_isolated;


 WARN_ON_ONCE(PageIsolated(page));
 __SetPageIsolated(page);
 unlock_page(page);

 return 0;

out_no_isolated:
 unlock_page(page);
out_putpage:
 put_page(page);
out:
 return -EBUSY;
}
