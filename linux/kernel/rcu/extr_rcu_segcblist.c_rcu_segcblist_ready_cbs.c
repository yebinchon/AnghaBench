
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int ** tails; int head; } ;


 size_t RCU_DONE_TAIL ;
 scalar_t__ rcu_segcblist_is_enabled (struct rcu_segcblist*) ;

bool rcu_segcblist_ready_cbs(struct rcu_segcblist *rsclp)
{
 return rcu_segcblist_is_enabled(rsclp) &&
        &rsclp->head != rsclp->tails[RCU_DONE_TAIL];
}
