
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cgroup_ctrl {unsigned long length; struct page** map; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long SWAP_CLUSTER_MAX ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int cond_resched () ;
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ;

__attribute__((used)) static int swap_cgroup_prepare(int type)
{
 struct page *page;
 struct swap_cgroup_ctrl *ctrl;
 unsigned long idx, max;

 ctrl = &swap_cgroup_ctrl[type];

 for (idx = 0; idx < ctrl->length; idx++) {
  page = alloc_page(GFP_KERNEL | __GFP_ZERO);
  if (!page)
   goto not_enough_page;
  ctrl->map[idx] = page;

  if (!(idx % SWAP_CLUSTER_MAX))
   cond_resched();
 }
 return 0;
not_enough_page:
 max = idx;
 for (idx = 0; idx < max; idx++)
  __free_page(ctrl->map[idx]);

 return -ENOMEM;
}
