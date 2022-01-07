
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {long len_lazy; } ;


 long rcu_segcblist_n_cbs (struct rcu_segcblist*) ;

__attribute__((used)) static inline long rcu_segcblist_n_nonlazy_cbs(struct rcu_segcblist *rsclp)
{
 return rcu_segcblist_n_cbs(rsclp) - rsclp->len_lazy;
}
