
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mempolicy {int dummy; } ;
struct hstate {scalar_t__ free_huge_pages; scalar_t__ resv_huge_pages; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int SetPagePrivate (struct page*) ;
 struct page* dequeue_huge_page_nodemask (struct hstate*,int ,int,int *) ;
 int htlb_alloc_mask (struct hstate*) ;
 int huge_node (struct vm_area_struct*,unsigned long,int ,struct mempolicy**,int **) ;
 int mpol_cond_put (struct mempolicy*) ;
 scalar_t__ vma_has_reserves (struct vm_area_struct*,long) ;

__attribute__((used)) static struct page *dequeue_huge_page_vma(struct hstate *h,
    struct vm_area_struct *vma,
    unsigned long address, int avoid_reserve,
    long chg)
{
 struct page *page;
 struct mempolicy *mpol;
 gfp_t gfp_mask;
 nodemask_t *nodemask;
 int nid;






 if (!vma_has_reserves(vma, chg) &&
   h->free_huge_pages - h->resv_huge_pages == 0)
  goto err;


 if (avoid_reserve && h->free_huge_pages - h->resv_huge_pages == 0)
  goto err;

 gfp_mask = htlb_alloc_mask(h);
 nid = huge_node(vma, address, gfp_mask, &mpol, &nodemask);
 page = dequeue_huge_page_nodemask(h, gfp_mask, nid, nodemask);
 if (page && !avoid_reserve && vma_has_reserves(vma, chg)) {
  SetPagePrivate(page);
  h->resv_huge_pages--;
 }

 mpol_cond_put(mpol);
 return page;

err:
 return ((void*)0);
}
