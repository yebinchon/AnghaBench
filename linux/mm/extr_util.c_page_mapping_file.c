
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int PageSwapCache (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ unlikely (int ) ;

struct address_space *page_mapping_file(struct page *page)
{
 if (unlikely(PageSwapCache(page)))
  return ((void*)0);
 return page_mapping(page);
}
