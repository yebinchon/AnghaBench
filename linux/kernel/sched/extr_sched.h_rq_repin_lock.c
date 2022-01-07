
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_flags {int clock_update_flags; int cookie; } ;
struct rq {int clock_update_flags; int lock; } ;


 int lockdep_repin_lock (int *,int ) ;

__attribute__((used)) static inline void rq_repin_lock(struct rq *rq, struct rq_flags *rf)
{
 lockdep_repin_lock(&rq->lock, rf->cookie);







}
