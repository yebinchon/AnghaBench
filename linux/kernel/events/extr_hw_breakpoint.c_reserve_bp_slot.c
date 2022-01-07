
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bp_type; } ;
struct perf_event {TYPE_1__ attr; } ;


 int __reserve_bp_slot (struct perf_event*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_bp_mutex ;

int reserve_bp_slot(struct perf_event *bp)
{
 int ret;

 mutex_lock(&nr_bp_mutex);

 ret = __reserve_bp_slot(bp, bp->attr.bp_type);

 mutex_unlock(&nr_bp_mutex);

 return ret;
}
