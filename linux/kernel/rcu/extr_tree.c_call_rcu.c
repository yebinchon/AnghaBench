
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;
typedef int rcu_callback_t ;


 int __call_rcu (struct rcu_head*,int ,int ) ;

void call_rcu(struct rcu_head *head, rcu_callback_t func)
{
 __call_rcu(head, func, 0);
}
