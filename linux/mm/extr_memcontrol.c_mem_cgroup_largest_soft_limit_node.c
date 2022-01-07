
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_tree_per_node {int lock; } ;
struct mem_cgroup_per_node {int dummy; } ;


 struct mem_cgroup_per_node* __mem_cgroup_largest_soft_limit_node (struct mem_cgroup_tree_per_node*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static struct mem_cgroup_per_node *
mem_cgroup_largest_soft_limit_node(struct mem_cgroup_tree_per_node *mctz)
{
 struct mem_cgroup_per_node *mz;

 spin_lock_irq(&mctz->lock);
 mz = __mem_cgroup_largest_soft_limit_node(mctz);
 spin_unlock_irq(&mctz->lock);
 return mz;
}
