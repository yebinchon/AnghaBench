
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int IDR_PRELOAD_SIZE ;
 scalar_t__ __radix_tree_preload (int ,int ) ;
 int preempt_disable () ;

void idr_preload(gfp_t gfp_mask)
{
 if (__radix_tree_preload(gfp_mask, IDR_PRELOAD_SIZE))
  preempt_disable();
}
