
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {scalar_t__* tails; int * gp_seq; } ;


 size_t RCU_DONE_TAIL ;
 int RCU_NEXT_TAIL ;
 int RCU_WAIT_TAIL ;
 scalar_t__ ULONG_CMP_LT (unsigned long,int ) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int rcu_segcblist_is_enabled (struct rcu_segcblist*) ;
 scalar_t__ rcu_segcblist_restempty (struct rcu_segcblist*,size_t) ;

void rcu_segcblist_advance(struct rcu_segcblist *rsclp, unsigned long seq)
{
 int i, j;

 WARN_ON_ONCE(!rcu_segcblist_is_enabled(rsclp));
 if (rcu_segcblist_restempty(rsclp, RCU_DONE_TAIL))
  return;





 for (i = RCU_WAIT_TAIL; i < RCU_NEXT_TAIL; i++) {
  if (ULONG_CMP_LT(seq, rsclp->gp_seq[i]))
   break;
  WRITE_ONCE(rsclp->tails[RCU_DONE_TAIL], rsclp->tails[i]);
 }


 if (i == RCU_WAIT_TAIL)
  return;


 for (j = RCU_WAIT_TAIL; j < i; j++)
  WRITE_ONCE(rsclp->tails[j], rsclp->tails[RCU_DONE_TAIL]);







 for (j = RCU_WAIT_TAIL; i < RCU_NEXT_TAIL; i++, j++) {
  if (rsclp->tails[j] == rsclp->tails[RCU_NEXT_TAIL])
   break;
  WRITE_ONCE(rsclp->tails[j], rsclp->tails[i]);
  rsclp->gp_seq[j] = rsclp->gp_seq[i];
 }
}
