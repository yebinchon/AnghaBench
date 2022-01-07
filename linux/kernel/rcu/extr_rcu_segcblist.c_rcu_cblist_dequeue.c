
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {struct rcu_head* next; } ;
struct rcu_cblist {struct rcu_head* head; struct rcu_head** tail; int len; } ;



struct rcu_head *rcu_cblist_dequeue(struct rcu_cblist *rclp)
{
 struct rcu_head *rhp;

 rhp = rclp->head;
 if (!rhp)
  return ((void*)0);
 rclp->len--;
 rclp->head = rhp->next;
 if (!rclp->head)
  rclp->tail = &rclp->head;
 return rhp;
}
