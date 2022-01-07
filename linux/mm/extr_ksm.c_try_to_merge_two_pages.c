
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_item {int dummy; } ;
struct page {int dummy; } ;


 int break_cow (struct rmap_item*) ;
 int try_to_merge_with_ksm_page (struct rmap_item*,struct page*,struct page*) ;

__attribute__((used)) static struct page *try_to_merge_two_pages(struct rmap_item *rmap_item,
        struct page *page,
        struct rmap_item *tree_rmap_item,
        struct page *tree_page)
{
 int err;

 err = try_to_merge_with_ksm_page(rmap_item, page, ((void*)0));
 if (!err) {
  err = try_to_merge_with_ksm_page(tree_rmap_item,
       tree_page, page);




  if (err)
   break_cow(rmap_item);
 }
 return err ? ((void*)0) : page;
}
