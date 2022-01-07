
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_tree_per_node {int lock; } ;
struct mem_cgroup_per_node {int dummy; } ;


 int __mem_cgroup_remove_exceeded (struct mem_cgroup_per_node*,struct mem_cgroup_tree_per_node*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mem_cgroup_remove_exceeded(struct mem_cgroup_per_node *mz,
           struct mem_cgroup_tree_per_node *mctz)
{
 unsigned long flags;

 spin_lock_irqsave(&mctz->lock, flags);
 __mem_cgroup_remove_exceeded(mz, mctz);
 spin_unlock_irqrestore(&mctz->lock, flags);
}
