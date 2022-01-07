
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root_cached {int dummy; } ;
struct anon_vma_chain {int cached_vma_last; int cached_vma_start; } ;


 int __anon_vma_interval_tree_insert (struct anon_vma_chain*,struct rb_root_cached*) ;
 int avc_last_pgoff (struct anon_vma_chain*) ;
 int avc_start_pgoff (struct anon_vma_chain*) ;

void anon_vma_interval_tree_insert(struct anon_vma_chain *node,
       struct rb_root_cached *root)
{




 __anon_vma_interval_tree_insert(node, root);
}
