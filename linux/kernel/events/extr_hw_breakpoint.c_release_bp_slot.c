
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bp_type; } ;
struct perf_event {TYPE_1__ attr; } ;


 int __release_bp_slot (struct perf_event*,int ) ;
 int arch_unregister_hw_breakpoint (struct perf_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_bp_mutex ;

void release_bp_slot(struct perf_event *bp)
{
 mutex_lock(&nr_bp_mutex);

 arch_unregister_hw_breakpoint(bp);
 __release_bp_slot(bp, bp->attr.bp_type);

 mutex_unlock(&nr_bp_mutex);
}
