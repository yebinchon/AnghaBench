
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int xa_flags; } ;


 int ROOT_IS_IDR ;

__attribute__((used)) static inline bool is_idr(const struct radix_tree_root *root)
{
 return !!(root->xa_flags & ROOT_IS_IDR);
}
