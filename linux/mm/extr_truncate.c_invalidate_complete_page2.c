
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; } ;
struct address_space {int i_pages; TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* freepage ) (struct page*) ;} ;


 int BUG_ON (scalar_t__) ;
 int GFP_KERNEL ;
 scalar_t__ PageDirty (struct page*) ;
 int __delete_from_page_cache (struct page*,int *) ;
 scalar_t__ page_has_private (struct page*) ;
 int put_page (struct page*) ;
 int stub1 (struct page*) ;
 int try_to_release_page (struct page*,int ) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
invalidate_complete_page2(struct address_space *mapping, struct page *page)
{
 unsigned long flags;

 if (page->mapping != mapping)
  return 0;

 if (page_has_private(page) && !try_to_release_page(page, GFP_KERNEL))
  return 0;

 xa_lock_irqsave(&mapping->i_pages, flags);
 if (PageDirty(page))
  goto failed;

 BUG_ON(page_has_private(page));
 __delete_from_page_cache(page, ((void*)0));
 xa_unlock_irqrestore(&mapping->i_pages, flags);

 if (mapping->a_ops->freepage)
  mapping->a_ops->freepage(page);

 put_page(page);
 return 1;
failed:
 xa_unlock_irqrestore(&mapping->i_pages, flags);
 return 0;
}
