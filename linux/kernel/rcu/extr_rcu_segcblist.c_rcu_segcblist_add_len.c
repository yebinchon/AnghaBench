
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {scalar_t__ len; } ;


 int WRITE_ONCE (scalar_t__,scalar_t__) ;
 int atomic_long_add (long,scalar_t__*) ;
 int smp_mb () ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void rcu_segcblist_add_len(struct rcu_segcblist *rsclp, long v)
{





 smp_mb();
 WRITE_ONCE(rsclp->len, rsclp->len + v);
 smp_mb();

}
