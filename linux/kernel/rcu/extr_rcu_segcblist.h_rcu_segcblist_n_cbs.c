
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int len; } ;


 long READ_ONCE (int ) ;
 long atomic_long_read (int *) ;

__attribute__((used)) static inline long rcu_segcblist_n_cbs(struct rcu_segcblist *rsclp)
{



 return READ_ONCE(rsclp->len);

}
