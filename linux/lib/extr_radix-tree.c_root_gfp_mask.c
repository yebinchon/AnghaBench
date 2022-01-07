
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int xa_flags; } ;
typedef int gfp_t ;


 int GFP_ZONEMASK ;
 int __GFP_BITS_MASK ;

__attribute__((used)) static inline gfp_t root_gfp_mask(const struct radix_tree_root *root)
{
 return root->xa_flags & (__GFP_BITS_MASK & ~GFP_ZONEMASK);
}
