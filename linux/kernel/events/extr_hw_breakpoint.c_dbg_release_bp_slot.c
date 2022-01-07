
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bp_type; } ;
struct perf_event {TYPE_1__ attr; } ;


 int __release_bp_slot (struct perf_event*,int ) ;
 scalar_t__ mutex_is_locked (int *) ;
 int nr_bp_mutex ;

int dbg_release_bp_slot(struct perf_event *bp)
{
 if (mutex_is_locked(&nr_bp_mutex))
  return -1;

 __release_bp_slot(bp, bp->attr.bp_type);

 return 0;
}
