
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {int b_assoc_buffers; } ;
struct TYPE_2__ {int nr; } ;


 int BUG_ON (int) ;
 int __this_cpu_dec (int ) ;
 TYPE_1__ bh_accounting ;
 int bh_cachep ;
 int kmem_cache_free (int ,struct buffer_head*) ;
 int list_empty (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int recalc_bh_state () ;

void free_buffer_head(struct buffer_head *bh)
{
 BUG_ON(!list_empty(&bh->b_assoc_buffers));
 kmem_cache_free(bh_cachep, bh);
 preempt_disable();
 __this_cpu_dec(bh_accounting.nr);
 recalc_bh_state();
 preempt_enable();
}
