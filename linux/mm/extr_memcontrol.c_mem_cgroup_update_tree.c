
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mem_cgroup_tree_per_node {int lock; } ;
struct mem_cgroup_per_node {scalar_t__ on_tree; } ;
struct mem_cgroup {int dummy; } ;


 int __mem_cgroup_insert_exceeded (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*,unsigned long) ;
 int __mem_cgroup_remove_exceeded (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*) ;
 struct mem_cgroup_per_node* mem_cgroup_page_nodeinfo (struct mem_cgroup*,struct page*) ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 unsigned long soft_limit_excess (struct mem_cgroup*) ;
 struct mem_cgroup_tree_per_node* soft_limit_tree_from_page (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mem_cgroup_update_tree(struct mem_cgroup *memcg, struct page *page)
{
 unsigned long excess;
 struct mem_cgroup_per_node *mz;
 struct mem_cgroup_tree_per_node *mctz;

 mctz = soft_limit_tree_from_page(page);
 if (!mctz)
  return;




 for (; memcg; memcg = parent_mem_cgroup(memcg)) {
  mz = mem_cgroup_page_nodeinfo(memcg, page);
  excess = soft_limit_excess(memcg);




  if (excess || mz->on_tree) {
   unsigned long flags;

   spin_lock_irqsave(&mctz->lock, flags);

   if (mz->on_tree)
    __mem_cgroup_remove_exceeded(mz, mctz);




   __mem_cgroup_insert_exceeded(mz, mctz, excess);
   spin_unlock_irqrestore(&mctz->lock, flags);
  }
 }
}
