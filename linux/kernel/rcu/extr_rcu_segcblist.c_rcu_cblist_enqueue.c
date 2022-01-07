
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {struct rcu_head* next; } ;
struct rcu_cblist {scalar_t__ len; struct rcu_head** tail; } ;


 int WRITE_ONCE (scalar_t__,scalar_t__) ;

void rcu_cblist_enqueue(struct rcu_cblist *rclp, struct rcu_head *rhp)
{
 *rclp->tail = rhp;
 rclp->tail = &rhp->next;
 WRITE_ONCE(rclp->len, rclp->len + 1);
}
