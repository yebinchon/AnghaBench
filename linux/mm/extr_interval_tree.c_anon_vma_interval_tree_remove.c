
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root_cached {int dummy; } ;
struct anon_vma_chain {int dummy; } ;


 int __anon_vma_interval_tree_remove (struct anon_vma_chain*,struct rb_root_cached*) ;

void anon_vma_interval_tree_remove(struct anon_vma_chain *node,
       struct rb_root_cached *root)
{
 __anon_vma_interval_tree_remove(node, root);
}
