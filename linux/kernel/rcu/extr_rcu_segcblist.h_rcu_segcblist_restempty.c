
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_segcblist {int * tails; } ;


 int * READ_ONCE (int ) ;

__attribute__((used)) static inline bool rcu_segcblist_restempty(struct rcu_segcblist *rsclp, int seg)
{
 return !READ_ONCE(*READ_ONCE(rsclp->tails[seg]));
}
