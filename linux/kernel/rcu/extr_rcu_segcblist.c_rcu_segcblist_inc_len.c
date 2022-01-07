
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int dummy; } ;


 int rcu_segcblist_add_len (struct rcu_segcblist*,int) ;

void rcu_segcblist_inc_len(struct rcu_segcblist *rsclp)
{
 rcu_segcblist_add_len(rsclp, 1);
}
