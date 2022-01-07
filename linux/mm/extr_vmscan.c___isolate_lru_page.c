
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
typedef int isolate_mode_t ;
struct TYPE_2__ {scalar_t__ migratepage; } ;


 int ClearPageLRU (struct page*) ;
 int EBUSY ;
 int EINVAL ;
 int ISOLATE_ASYNC_MIGRATE ;
 int ISOLATE_UNEVICTABLE ;
 int ISOLATE_UNMAPPED ;
 scalar_t__ PageDirty (struct page*) ;
 int PageLRU (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int get_page_unless_zero (struct page*) ;
 scalar_t__ likely (int ) ;
 scalar_t__ page_mapped (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

int __isolate_lru_page(struct page *page, isolate_mode_t mode)
{
 int ret = -EINVAL;


 if (!PageLRU(page))
  return ret;


 if (PageUnevictable(page) && !(mode & ISOLATE_UNEVICTABLE))
  return ret;

 ret = -EBUSY;
 if (mode & ISOLATE_ASYNC_MIGRATE) {

  if (PageWriteback(page))
   return ret;

  if (PageDirty(page)) {
   struct address_space *mapping;
   bool migrate_dirty;
   if (!trylock_page(page))
    return ret;

   mapping = page_mapping(page);
   migrate_dirty = !mapping || mapping->a_ops->migratepage;
   unlock_page(page);
   if (!migrate_dirty)
    return ret;
  }
 }

 if ((mode & ISOLATE_UNMAPPED) && page_mapped(page))
  return ret;

 if (likely(get_page_unless_zero(page))) {





  ClearPageLRU(page);
  ret = 0;
 }

 return ret;
}
