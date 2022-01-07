
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {void* arg; int invalid_vma; int rmap_one; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int invalid_mkclean_vma ;
 int page_mapped (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int page_mkclean_one ;
 int rmap_walk (struct page*,struct rmap_walk_control*) ;

int page_mkclean(struct page *page)
{
 int cleaned = 0;
 struct address_space *mapping;
 struct rmap_walk_control rwc = {
  .arg = (void *)&cleaned,
  .rmap_one = page_mkclean_one,
  .invalid_vma = invalid_mkclean_vma,
 };

 BUG_ON(!PageLocked(page));

 if (!page_mapped(page))
  return 0;

 mapping = page_mapping(page);
 if (!mapping)
  return 0;

 rmap_walk(page, &rwc);

 return cleaned;
}
