
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int SetPageHugeTemporary (struct page*) ;
 struct page* alloc_fresh_huge_page (struct hstate*,int ,int,int *,int *) ;
 scalar_t__ hstate_is_gigantic (struct hstate*) ;

struct page *alloc_migrate_huge_page(struct hstate *h, gfp_t gfp_mask,
         int nid, nodemask_t *nmask)
{
 struct page *page;

 if (hstate_is_gigantic(h))
  return ((void*)0);

 page = alloc_fresh_huge_page(h, gfp_mask, nid, nmask, ((void*)0));
 if (!page)
  return ((void*)0);





 SetPageHugeTemporary(page);

 return page;
}
