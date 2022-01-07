
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {struct rcu_head*** tails; } ;
struct rcu_head {int dummy; } ;


 size_t RCU_DONE_TAIL ;
 scalar_t__ rcu_segcblist_is_enabled (struct rcu_segcblist*) ;

struct rcu_head *rcu_segcblist_first_pend_cb(struct rcu_segcblist *rsclp)
{
 if (rcu_segcblist_is_enabled(rsclp))
  return *rsclp->tails[RCU_DONE_TAIL];
 return ((void*)0);
}
