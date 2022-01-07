
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq {int clock_update_flags; int lock; } ;


 int RQCF_REQ_SKIP ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void rq_clock_cancel_skipupdate(struct rq *rq)
{
 lockdep_assert_held(&rq->lock);
 rq->clock_update_flags &= ~RQCF_REQ_SKIP;
}
