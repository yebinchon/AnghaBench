
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cgroup_ctrl {unsigned long length; struct page** map; } ;
struct page {int dummy; } ;


 unsigned long SWAP_CLUSTER_MAX ;
 int __free_page (struct page*) ;
 int cond_resched () ;
 int do_swap_account ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ;
 int swap_cgroup_mutex ;
 int vfree (struct page**) ;

void swap_cgroup_swapoff(int type)
{
 struct page **map;
 unsigned long i, length;
 struct swap_cgroup_ctrl *ctrl;

 if (!do_swap_account)
  return;

 mutex_lock(&swap_cgroup_mutex);
 ctrl = &swap_cgroup_ctrl[type];
 map = ctrl->map;
 length = ctrl->length;
 ctrl->map = ((void*)0);
 ctrl->length = 0;
 mutex_unlock(&swap_cgroup_mutex);

 if (map) {
  for (i = 0; i < length; i++) {
   struct page *page = map[i];
   if (page)
    __free_page(page);
   if (!(i % SWAP_CLUSTER_MAX))
    cond_resched();
  }
  vfree(map);
 }
}
