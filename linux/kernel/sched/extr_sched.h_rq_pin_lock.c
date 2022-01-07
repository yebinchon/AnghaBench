
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_flags {scalar_t__ clock_update_flags; int cookie; } ;
struct rq {int clock_update_flags; int lock; } ;


 int RQCF_ACT_SKIP ;
 int RQCF_REQ_SKIP ;
 int lockdep_pin_lock (int *) ;

__attribute__((used)) static inline void rq_pin_lock(struct rq *rq, struct rq_flags *rf)
{
 rf->cookie = lockdep_pin_lock(&rq->lock);





}
