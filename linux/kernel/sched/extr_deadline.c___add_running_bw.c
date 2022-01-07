
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct dl_rq {scalar_t__ running_bw; scalar_t__ this_bw; } ;
struct TYPE_3__ {int lock; } ;


 int SCHED_WARN_ON (int) ;
 int cpufreq_update_util (TYPE_1__*,int ) ;
 int lockdep_assert_held (int *) ;
 TYPE_1__* rq_of_dl_rq (struct dl_rq*) ;

__attribute__((used)) static inline
void __add_running_bw(u64 dl_bw, struct dl_rq *dl_rq)
{
 u64 old = dl_rq->running_bw;

 lockdep_assert_held(&(rq_of_dl_rq(dl_rq))->lock);
 dl_rq->running_bw += dl_bw;
 SCHED_WARN_ON(dl_rq->running_bw < old);
 SCHED_WARN_ON(dl_rq->running_bw > dl_rq->this_bw);

 cpufreq_update_util(rq_of_dl_rq(dl_rq), 0);
}
