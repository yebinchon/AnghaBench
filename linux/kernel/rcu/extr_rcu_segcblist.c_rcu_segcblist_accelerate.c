
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {scalar_t__* tails; unsigned long* gp_seq; } ;


 int RCU_DONE_TAIL ;
 int RCU_NEXT_READY_TAIL ;
 int RCU_NEXT_TAIL ;
 scalar_t__ ULONG_CMP_LT (unsigned long,unsigned long) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int rcu_segcblist_is_enabled (struct rcu_segcblist*) ;
 scalar_t__ rcu_segcblist_restempty (struct rcu_segcblist*,int) ;

bool rcu_segcblist_accelerate(struct rcu_segcblist *rsclp, unsigned long seq)
{
 int i;

 WARN_ON_ONCE(!rcu_segcblist_is_enabled(rsclp));
 if (rcu_segcblist_restempty(rsclp, RCU_DONE_TAIL))
  return 0;
 for (i = RCU_NEXT_READY_TAIL; i > RCU_DONE_TAIL; i--)
  if (rsclp->tails[i] != rsclp->tails[i - 1] &&
      ULONG_CMP_LT(rsclp->gp_seq[i], seq))
   break;
 if (++i >= RCU_NEXT_TAIL)
  return 0;
 for (; i < RCU_NEXT_TAIL; i++) {
  WRITE_ONCE(rsclp->tails[i], rsclp->tails[RCU_NEXT_TAIL]);
  rsclp->gp_seq[i] = seq;
 }
 return 1;
}
