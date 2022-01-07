
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 scalar_t__ __remove_mapping (struct address_space*,struct page*,int) ;
 int page_ref_unfreeze (struct page*,int) ;

int remove_mapping(struct address_space *mapping, struct page *page)
{
 if (__remove_mapping(mapping, page, 0)) {





  page_ref_unfreeze(page, 1);
  return 1;
 }
 return 0;
}
