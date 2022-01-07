
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {scalar_t__ clock_update_flags; } ;


 scalar_t__ RQCF_ACT_SKIP ;
 int SCHED_WARN_ON (int) ;

__attribute__((used)) static inline void assert_clock_updated(struct rq *rq)
{




 SCHED_WARN_ON(rq->clock_update_flags < RQCF_ACT_SKIP);
}
