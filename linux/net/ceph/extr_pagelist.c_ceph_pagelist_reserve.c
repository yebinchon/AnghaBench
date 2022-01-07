
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct ceph_pagelist {size_t room; size_t num_pages_free; int free_list; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 size_t PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 struct page* __page_cache_alloc (int ) ;
 int list_add_tail (int *,int *) ;

int ceph_pagelist_reserve(struct ceph_pagelist *pl, size_t space)
{
 if (space <= pl->room)
  return 0;
 space -= pl->room;
 space = (space + PAGE_SIZE - 1) >> PAGE_SHIFT;

 while (space > pl->num_pages_free) {
  struct page *page = __page_cache_alloc(GFP_NOFS);
  if (!page)
   return -ENOMEM;
  list_add_tail(&page->lru, &pl->free_list);
  ++pl->num_pages_free;
 }
 return 0;
}
