
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rq {int clock_task; int lock; } ;


 int assert_clock_updated (struct rq*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline u64 rq_clock_task(struct rq *rq)
{
 lockdep_assert_held(&rq->lock);
 assert_clock_updated(rq);

 return rq->clock_task;
}
