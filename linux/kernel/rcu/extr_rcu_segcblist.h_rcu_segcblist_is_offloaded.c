
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int offloaded; } ;



__attribute__((used)) static inline bool rcu_segcblist_is_offloaded(struct rcu_segcblist *rsclp)
{
 return rsclp->offloaded;
}
