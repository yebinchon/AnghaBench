
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int PageActive (struct page*) ;
 int WARN_ON_ONCE (int ) ;
 int __ClearPageLocked (struct page*) ;
 int __GFP_WRITE ;
 int __SetPageLocked (struct page*) ;
 int __add_to_page_cache_locked (struct page*,struct address_space*,int ,int,void**) ;
 int lru_cache_add (struct page*) ;
 scalar_t__ unlikely (int) ;
 int workingset_refault (struct page*,void*) ;

int add_to_page_cache_lru(struct page *page, struct address_space *mapping,
    pgoff_t offset, gfp_t gfp_mask)
{
 void *shadow = ((void*)0);
 int ret;

 __SetPageLocked(page);
 ret = __add_to_page_cache_locked(page, mapping, offset,
      gfp_mask, &shadow);
 if (unlikely(ret))
  __ClearPageLocked(page);
 else {
  WARN_ON_ONCE(PageActive(page));
  if (!(gfp_mask & __GFP_WRITE) && shadow)
   workingset_refault(page, shadow);
  lru_cache_add(page);
 }
 return ret;
}
