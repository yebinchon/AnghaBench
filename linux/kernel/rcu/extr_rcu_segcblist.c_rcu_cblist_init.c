
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_cblist {scalar_t__ len_lazy; scalar_t__ len; int * head; int ** tail; } ;



void rcu_cblist_init(struct rcu_cblist *rclp)
{
 rclp->head = ((void*)0);
 rclp->tail = &rclp->head;
 rclp->len = 0;
 rclp->len_lazy = 0;
}
