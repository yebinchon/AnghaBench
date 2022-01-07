
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {scalar_t__ len_lazy; } ;
struct rcu_cblist {int len; int len_lazy; } ;


 int rcu_segcblist_xchg_len (struct rcu_segcblist*,int ) ;

void rcu_segcblist_extract_count(struct rcu_segcblist *rsclp,
            struct rcu_cblist *rclp)
{
 rclp->len_lazy += rsclp->len_lazy;
 rsclp->len_lazy = 0;
 rclp->len = rcu_segcblist_xchg_len(rsclp, 0);
}
