
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mempolicy {scalar_t__ mode; } ;
typedef int gfp_t ;


 scalar_t__ MPOL_INTERLEAVE ;
 int __GFP_THISNODE ;
 struct page* __alloc_pages_nodemask (int,unsigned int,int ,int ) ;
 struct page* alloc_page_interleave (int,unsigned int,int ) ;
 int current ;
 struct mempolicy default_policy ;
 struct mempolicy* get_task_policy (int ) ;
 int in_interrupt () ;
 int interleave_nodes (struct mempolicy*) ;
 int numa_node_id () ;
 int policy_node (int,struct mempolicy*,int ) ;
 int policy_nodemask (int,struct mempolicy*) ;

struct page *alloc_pages_current(gfp_t gfp, unsigned order)
{
 struct mempolicy *pol = &default_policy;
 struct page *page;

 if (!in_interrupt() && !(gfp & __GFP_THISNODE))
  pol = get_task_policy(current);





 if (pol->mode == MPOL_INTERLEAVE)
  page = alloc_page_interleave(gfp, order, interleave_nodes(pol));
 else
  page = __alloc_pages_nodemask(gfp, order,
    policy_node(gfp, pol, numa_node_id()),
    policy_nodemask(gfp, pol));

 return page;
}
