
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {long len; } ;


 int WRITE_ONCE (long,long) ;
 long atomic_long_xchg (long*,long) ;
 int smp_mb () ;

long rcu_segcblist_xchg_len(struct rcu_segcblist *rsclp, long v)
{



 long ret = rsclp->len;

 smp_mb();
 WRITE_ONCE(rsclp->len, v);
 smp_mb();
 return ret;

}
