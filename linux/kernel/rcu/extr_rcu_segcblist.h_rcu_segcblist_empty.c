
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int head; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline bool rcu_segcblist_empty(struct rcu_segcblist *rsclp)
{
 return !READ_ONCE(rsclp->head);
}
