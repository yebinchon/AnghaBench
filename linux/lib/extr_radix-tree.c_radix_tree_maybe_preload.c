
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int RADIX_TREE_PRELOAD_SIZE ;
 int __radix_tree_preload (int ,int ) ;
 scalar_t__ gfpflags_allow_blocking (int ) ;
 int preempt_disable () ;

int radix_tree_maybe_preload(gfp_t gfp_mask)
{
 if (gfpflags_allow_blocking(gfp_mask))
  return __radix_tree_preload(gfp_mask, RADIX_TREE_PRELOAD_SIZE);

 preempt_disable();
 return 0;
}
