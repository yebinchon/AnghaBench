
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;
typedef int (* rcu_callback_t ) (struct rcu_head*) ;



__attribute__((used)) static void
call_rcu_busted(struct rcu_head *head, rcu_callback_t func)
{

 func(head);
}
