
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int val; } ;
typedef TYPE_2__ swp_entry_t ;
struct page {int dummy; } ;
struct address_space {int i_pages; TYPE_1__* a_ops; } ;
struct TYPE_6__ {void (* freepage ) (struct page*) ;} ;


 int BUG_ON (int) ;
 int PageDirty (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int __delete_from_page_cache (struct page*,void*) ;
 int __delete_from_swap_cache (struct page*,TYPE_2__) ;
 int compound_nr (struct page*) ;
 int dax_mapping (struct address_space*) ;
 int mapping_exiting (struct address_space*) ;
 int mem_cgroup_swapout (struct page*,TYPE_2__) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int page_private (struct page*) ;
 int page_ref_freeze (struct page*,int) ;
 int page_ref_unfreeze (struct page*,int) ;
 int put_swap_page (struct page*,TYPE_2__) ;
 scalar_t__ unlikely (int ) ;
 void* workingset_eviction (struct page*) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __remove_mapping(struct address_space *mapping, struct page *page,
       bool reclaimed)
{
 unsigned long flags;
 int refcount;

 BUG_ON(!PageLocked(page));
 BUG_ON(mapping != page_mapping(page));

 xa_lock_irqsave(&mapping->i_pages, flags);
 refcount = 1 + compound_nr(page);
 if (!page_ref_freeze(page, refcount))
  goto cannot_free;

 if (unlikely(PageDirty(page))) {
  page_ref_unfreeze(page, refcount);
  goto cannot_free;
 }

 if (PageSwapCache(page)) {
  swp_entry_t swap = { .val = page_private(page) };
  mem_cgroup_swapout(page, swap);
  __delete_from_swap_cache(page, swap);
  xa_unlock_irqrestore(&mapping->i_pages, flags);
  put_swap_page(page, swap);
 } else {
  void (*freepage)(struct page *);
  void *shadow = ((void*)0);

  freepage = mapping->a_ops->freepage;
  if (reclaimed && page_is_file_cache(page) &&
      !mapping_exiting(mapping) && !dax_mapping(mapping))
   shadow = workingset_eviction(page);
  __delete_from_page_cache(page, shadow);
  xa_unlock_irqrestore(&mapping->i_pages, flags);

  if (freepage != ((void*)0))
   freepage(page);
 }

 return 1;

cannot_free:
 xa_unlock_irqrestore(&mapping->i_pages, flags);
 return 0;
}
