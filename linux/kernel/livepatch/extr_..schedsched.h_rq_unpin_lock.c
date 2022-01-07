
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_flags {int cookie; int clock_update_flags; } ;
struct rq {scalar_t__ clock_update_flags; int lock; } ;


 scalar_t__ RQCF_ACT_SKIP ;
 int RQCF_UPDATED ;
 int lockdep_unpin_lock (int *,int ) ;

__attribute__((used)) static inline void rq_unpin_lock(struct rq *rq, struct rq_flags *rf)
{





 lockdep_unpin_lock(&rq->lock, rf->cookie);
}
