
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dep_map; } ;
struct rq {TYPE_1__ lock; } ;


 int _THIS_IP_ ;
 int raw_spin_unlock_irq (TYPE_1__*) ;
 int spin_acquire (int *,int ,int ,int ) ;

__attribute__((used)) static inline void finish_lock_switch(struct rq *rq)
{





 spin_acquire(&rq->lock.dep_map, 0, 0, _THIS_IP_);
 raw_spin_unlock_irq(&rq->lock);
}
