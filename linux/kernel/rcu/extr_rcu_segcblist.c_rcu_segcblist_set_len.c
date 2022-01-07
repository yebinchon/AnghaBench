
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int len; } ;


 int WRITE_ONCE (int ,long) ;
 int atomic_long_set (int *,long) ;

void rcu_segcblist_set_len(struct rcu_segcblist *rsclp, long v)
{



 WRITE_ONCE(rsclp->len, v);

}
