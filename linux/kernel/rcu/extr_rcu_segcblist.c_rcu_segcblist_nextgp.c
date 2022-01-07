
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {unsigned long* gp_seq; } ;


 size_t RCU_WAIT_TAIL ;
 int rcu_segcblist_pend_cbs (struct rcu_segcblist*) ;

bool rcu_segcblist_nextgp(struct rcu_segcblist *rsclp, unsigned long *lp)
{
 if (!rcu_segcblist_pend_cbs(rsclp))
  return 0;
 *lp = rsclp->gp_seq[RCU_WAIT_TAIL];
 return 1;
}
