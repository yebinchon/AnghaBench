
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anon_vma_chain {int dummy; } ;


 struct anon_vma_chain* __anon_vma_interval_tree_iter_next (struct anon_vma_chain*,unsigned long,unsigned long) ;

struct anon_vma_chain *
anon_vma_interval_tree_iter_next(struct anon_vma_chain *node,
     unsigned long first, unsigned long last)
{
 return __anon_vma_interval_tree_iter_next(node, first, last);
}
