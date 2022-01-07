
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int dummy; } ;


 int RCU_DONE_TAIL ;
 scalar_t__ rcu_segcblist_is_enabled (struct rcu_segcblist*) ;
 int rcu_segcblist_restempty (struct rcu_segcblist*,int ) ;

bool rcu_segcblist_pend_cbs(struct rcu_segcblist *rsclp)
{
 return rcu_segcblist_is_enabled(rsclp) &&
        !rcu_segcblist_restempty(rsclp, RCU_DONE_TAIL);
}
