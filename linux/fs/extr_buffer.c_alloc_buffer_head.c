
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {int b_assoc_buffers; } ;
typedef int gfp_t ;
struct TYPE_2__ {int nr; } ;


 int INIT_LIST_HEAD (int *) ;
 int __this_cpu_inc (int ) ;
 TYPE_1__ bh_accounting ;
 int bh_cachep ;
 struct buffer_head* kmem_cache_zalloc (int ,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int recalc_bh_state () ;

struct buffer_head *alloc_buffer_head(gfp_t gfp_flags)
{
 struct buffer_head *ret = kmem_cache_zalloc(bh_cachep, gfp_flags);
 if (ret) {
  INIT_LIST_HEAD(&ret->b_assoc_buffers);
  preempt_disable();
  __this_cpu_inc(bh_accounting.nr);
  recalc_bh_state();
  preempt_enable();
 }
 return ret;
}
