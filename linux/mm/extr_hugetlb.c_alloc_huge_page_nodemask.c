
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {scalar_t__ free_huge_pages; scalar_t__ resv_huge_pages; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 struct page* alloc_migrate_huge_page (struct hstate*,int ,int,int *) ;
 struct page* dequeue_huge_page_nodemask (struct hstate*,int ,int,int *) ;
 int htlb_alloc_mask (struct hstate*) ;
 int hugetlb_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct page *alloc_huge_page_nodemask(struct hstate *h, int preferred_nid,
  nodemask_t *nmask)
{
 gfp_t gfp_mask = htlb_alloc_mask(h);

 spin_lock(&hugetlb_lock);
 if (h->free_huge_pages - h->resv_huge_pages > 0) {
  struct page *page;

  page = dequeue_huge_page_nodemask(h, gfp_mask, preferred_nid, nmask);
  if (page) {
   spin_unlock(&hugetlb_lock);
   return page;
  }
 }
 spin_unlock(&hugetlb_lock);

 return alloc_migrate_huge_page(h, gfp_mask, preferred_nid, nmask);
}
