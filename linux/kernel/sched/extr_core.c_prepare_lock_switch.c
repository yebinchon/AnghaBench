
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct rq_flags {int dummy; } ;
struct TYPE_2__ {struct task_struct* owner; int dep_map; } ;
struct rq {TYPE_1__ lock; } ;


 int _THIS_IP_ ;
 int rq_unpin_lock (struct rq*,struct rq_flags*) ;
 int spin_release (int *,int,int ) ;

__attribute__((used)) static inline void
prepare_lock_switch(struct rq *rq, struct task_struct *next, struct rq_flags *rf)
{






 rq_unpin_lock(rq, rf);
 spin_release(&rq->lock.dep_map, 1, _THIS_IP_);




}
