
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {scalar_t__ enabled; } ;


 int WARN_ON_ONCE (int) ;
 int rcu_segcblist_empty (struct rcu_segcblist*) ;
 int rcu_segcblist_n_cbs (struct rcu_segcblist*) ;
 int rcu_segcblist_n_lazy_cbs (struct rcu_segcblist*) ;

void rcu_segcblist_disable(struct rcu_segcblist *rsclp)
{
 WARN_ON_ONCE(!rcu_segcblist_empty(rsclp));
 WARN_ON_ONCE(rcu_segcblist_n_cbs(rsclp));
 WARN_ON_ONCE(rcu_segcblist_n_lazy_cbs(rsclp));
 rsclp->enabled = 0;
}
