
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int enabled; scalar_t__ len_lazy; int * head; int *** tails; int *** gp_seq; } ;


 scalar_t__ ARRAY_SIZE (int ***) ;
 int BUILD_BUG_ON (int) ;
 int RCU_CBLIST_NSEGS ;
 scalar_t__ RCU_NEXT_TAIL ;
 int rcu_segcblist_set_len (struct rcu_segcblist*,int ) ;

void rcu_segcblist_init(struct rcu_segcblist *rsclp)
{
 int i;

 BUILD_BUG_ON(RCU_NEXT_TAIL + 1 != ARRAY_SIZE(rsclp->gp_seq));
 BUILD_BUG_ON(ARRAY_SIZE(rsclp->tails) != ARRAY_SIZE(rsclp->gp_seq));
 rsclp->head = ((void*)0);
 for (i = 0; i < RCU_CBLIST_NSEGS; i++)
  rsclp->tails[i] = &rsclp->head;
 rcu_segcblist_set_len(rsclp, 0);
 rsclp->len_lazy = 0;
 rsclp->enabled = 1;
}
