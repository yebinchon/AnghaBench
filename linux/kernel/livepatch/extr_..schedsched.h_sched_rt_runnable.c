
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rt_queued; } ;
struct rq {TYPE_1__ rt; } ;



__attribute__((used)) static inline bool sched_rt_runnable(struct rq *rq)
{
 return rq->rt.rt_queued > 0;
}
