
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int __add_to_page_cache_locked (struct page*,struct address_space*,int ,int ,int *) ;

int add_to_page_cache_locked(struct page *page, struct address_space *mapping,
  pgoff_t offset, gfp_t gfp_mask)
{
 return __add_to_page_cache_locked(page, mapping, offset,
       gfp_mask, ((void*)0));
}
