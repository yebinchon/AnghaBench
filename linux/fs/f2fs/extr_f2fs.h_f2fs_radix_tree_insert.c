
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int cond_resched () ;
 scalar_t__ radix_tree_insert (struct radix_tree_root*,unsigned long,void*) ;

__attribute__((used)) static inline void f2fs_radix_tree_insert(struct radix_tree_root *root,
    unsigned long index, void *item)
{
 while (radix_tree_insert(root, index, item))
  cond_resched();
}
