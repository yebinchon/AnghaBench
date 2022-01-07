
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;


 int PageLocked (struct page*) ;
 int PageUptodate (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __GFP_HIGH ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NOWARN ;
 int add_to_swap_cache (struct page*,TYPE_1__,int) ;
 TYPE_1__ get_swap_page (struct page*) ;
 int put_swap_page (struct page*,TYPE_1__) ;
 int set_page_dirty (struct page*) ;

int add_to_swap(struct page *page)
{
 swp_entry_t entry;
 int err;

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 VM_BUG_ON_PAGE(!PageUptodate(page), page);

 entry = get_swap_page(page);
 if (!entry.val)
  return 0;
 err = add_to_swap_cache(page, entry,
   __GFP_HIGH|__GFP_NOMEMALLOC|__GFP_NOWARN);
 if (err)




  goto fail;
 set_page_dirty(page);

 return 1;

fail:
 put_swap_page(page, entry);
 return 0;
}
