
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int HTLB_BUDDY_PGALLOC ;
 int HTLB_BUDDY_PGALLOC_FAIL ;
 int NUMA_NO_NODE ;
 int __GFP_COMP ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 struct page* __alloc_pages_nodemask (int,int,int,int *) ;
 int __count_vm_event (int ) ;
 int huge_page_order (struct hstate*) ;
 int node_clear (int,int ) ;
 scalar_t__ node_isset (int,int ) ;
 int node_set (int,int ) ;
 int numa_mem_id () ;

__attribute__((used)) static struct page *alloc_buddy_huge_page(struct hstate *h,
  gfp_t gfp_mask, int nid, nodemask_t *nmask,
  nodemask_t *node_alloc_noretry)
{
 int order = huge_page_order(h);
 struct page *page;
 bool alloc_try_hard = 1;
 if (node_alloc_noretry && node_isset(nid, *node_alloc_noretry))
  alloc_try_hard = 0;
 gfp_mask |= __GFP_COMP|__GFP_NOWARN;
 if (alloc_try_hard)
  gfp_mask |= __GFP_RETRY_MAYFAIL;
 if (nid == NUMA_NO_NODE)
  nid = numa_mem_id();
 page = __alloc_pages_nodemask(gfp_mask, order, nid, nmask);
 if (page)
  __count_vm_event(HTLB_BUDDY_PGALLOC);
 else
  __count_vm_event(HTLB_BUDDY_PGALLOC_FAIL);






 if (node_alloc_noretry && page && !alloc_try_hard)
  node_clear(nid, *node_alloc_noretry);






 if (node_alloc_noretry && !page && alloc_try_hard)
  node_set(nid, *node_alloc_noretry);

 return page;
}
