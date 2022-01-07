
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 struct page* alloc_buddy_huge_page (struct hstate*,int ,int,int *,int *) ;
 struct page* alloc_gigantic_page (struct hstate*,int ,int,int *) ;
 scalar_t__ hstate_is_gigantic (struct hstate*) ;
 int huge_page_order (struct hstate*) ;
 int page_to_nid (struct page*) ;
 int prep_compound_gigantic_page (struct page*,int ) ;
 int prep_new_huge_page (struct hstate*,struct page*,int ) ;

__attribute__((used)) static struct page *alloc_fresh_huge_page(struct hstate *h,
  gfp_t gfp_mask, int nid, nodemask_t *nmask,
  nodemask_t *node_alloc_noretry)
{
 struct page *page;

 if (hstate_is_gigantic(h))
  page = alloc_gigantic_page(h, gfp_mask, nid, nmask);
 else
  page = alloc_buddy_huge_page(h, gfp_mask,
    nid, nmask, node_alloc_noretry);
 if (!page)
  return ((void*)0);

 if (hstate_is_gigantic(h))
  prep_compound_gigantic_page(page, huge_page_order(h));
 prep_new_huge_page(h, page, page_to_nid(page));

 return page;
}
