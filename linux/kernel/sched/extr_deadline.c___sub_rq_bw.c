
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct dl_rq {scalar_t__ this_bw; scalar_t__ running_bw; } ;
struct TYPE_2__ {int lock; } ;


 int SCHED_WARN_ON (int) ;
 int lockdep_assert_held (int *) ;
 TYPE_1__* rq_of_dl_rq (struct dl_rq*) ;

__attribute__((used)) static inline
void __sub_rq_bw(u64 dl_bw, struct dl_rq *dl_rq)
{
 u64 old = dl_rq->this_bw;

 lockdep_assert_held(&(rq_of_dl_rq(dl_rq))->lock);
 dl_rq->this_bw -= dl_bw;
 SCHED_WARN_ON(dl_rq->this_bw > old);
 if (dl_rq->this_bw > old)
  dl_rq->this_bw = 0;
 SCHED_WARN_ON(dl_rq->running_bw > dl_rq->this_bw);
}
