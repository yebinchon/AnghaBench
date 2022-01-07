
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mempolicy {int dummy; } ;
struct hstate {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 struct page* alloc_huge_page_nodemask (struct hstate*,int,int *) ;
 int htlb_alloc_mask (struct hstate*) ;
 int huge_node (struct vm_area_struct*,unsigned long,int ,struct mempolicy**,int **) ;
 int mpol_cond_put (struct mempolicy*) ;

struct page *alloc_huge_page_vma(struct hstate *h, struct vm_area_struct *vma,
  unsigned long address)
{
 struct mempolicy *mpol;
 nodemask_t *nodemask;
 struct page *page;
 gfp_t gfp_mask;
 int node;

 gfp_mask = htlb_alloc_mask(h);
 node = huge_node(vma, address, gfp_mask, &mpol, &nodemask);
 page = alloc_huge_page_nodemask(h, node, nodemask);
 mpol_cond_put(mpol);

 return page;
}
