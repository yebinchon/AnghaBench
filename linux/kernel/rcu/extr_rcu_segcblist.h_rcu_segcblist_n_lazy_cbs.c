
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {long len_lazy; } ;



__attribute__((used)) static inline long rcu_segcblist_n_lazy_cbs(struct rcu_segcblist *rsclp)
{
 return rsclp->len_lazy;
}
