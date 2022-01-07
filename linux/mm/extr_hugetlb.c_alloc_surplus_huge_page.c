
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {scalar_t__ surplus_huge_pages; scalar_t__ nr_overcommit_huge_pages; int * surplus_huge_pages_node; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int SetPageHugeTemporary (struct page*) ;
 struct page* alloc_fresh_huge_page (struct hstate*,int ,int,int *,int *) ;
 scalar_t__ hstate_is_gigantic (struct hstate*) ;
 int hugetlb_lock ;
 size_t page_to_nid (struct page*) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct page *alloc_surplus_huge_page(struct hstate *h, gfp_t gfp_mask,
  int nid, nodemask_t *nmask)
{
 struct page *page = ((void*)0);

 if (hstate_is_gigantic(h))
  return ((void*)0);

 spin_lock(&hugetlb_lock);
 if (h->surplus_huge_pages >= h->nr_overcommit_huge_pages)
  goto out_unlock;
 spin_unlock(&hugetlb_lock);

 page = alloc_fresh_huge_page(h, gfp_mask, nid, nmask, ((void*)0));
 if (!page)
  return ((void*)0);

 spin_lock(&hugetlb_lock);







 if (h->surplus_huge_pages >= h->nr_overcommit_huge_pages) {
  SetPageHugeTemporary(page);
  spin_unlock(&hugetlb_lock);
  put_page(page);
  return ((void*)0);
 } else {
  h->surplus_huge_pages++;
  h->surplus_huge_pages_node[page_to_nid(page)]++;
 }

out_unlock:
 spin_unlock(&hugetlb_lock);

 return page;
}
