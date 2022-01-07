
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int offloaded; } ;



void rcu_segcblist_offload(struct rcu_segcblist *rsclp)
{
 rsclp->offloaded = 1;
}
