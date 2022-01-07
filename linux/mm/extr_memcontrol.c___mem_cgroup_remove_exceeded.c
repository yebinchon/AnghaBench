
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup_tree_per_node {int rb_root; int * rb_rightmost; } ;
struct mem_cgroup_per_node {int on_tree; int tree_node; } ;


 int rb_erase (int *,int *) ;
 int * rb_prev (int *) ;

__attribute__((used)) static void __mem_cgroup_remove_exceeded(struct mem_cgroup_per_node *mz,
      struct mem_cgroup_tree_per_node *mctz)
{
 if (!mz->on_tree)
  return;

 if (&mz->tree_node == mctz->rb_rightmost)
  mctz->rb_rightmost = rb_prev(&mz->tree_node);

 rb_erase(&mz->tree_node, &mctz->rb_root);
 mz->on_tree = 0;
}
