
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_cblist {int len_lazy; } ;



__attribute__((used)) static inline void rcu_cblist_dequeued_lazy(struct rcu_cblist *rclp)
{
 rclp->len_lazy--;
}
