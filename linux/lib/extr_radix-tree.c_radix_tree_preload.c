
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int RADIX_TREE_PRELOAD_SIZE ;
 int WARN_ON_ONCE (int) ;
 int __radix_tree_preload (int ,int ) ;
 int gfpflags_allow_blocking (int ) ;

int radix_tree_preload(gfp_t gfp_mask)
{

 WARN_ON_ONCE(!gfpflags_allow_blocking(gfp_mask));
 return __radix_tree_preload(gfp_mask, RADIX_TREE_PRELOAD_SIZE);
}
