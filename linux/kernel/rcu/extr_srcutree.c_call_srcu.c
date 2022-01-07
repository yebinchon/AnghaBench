
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;
struct rcu_head {int dummy; } ;
typedef int rcu_callback_t ;


 int __call_srcu (struct srcu_struct*,struct rcu_head*,int ,int) ;

void call_srcu(struct srcu_struct *ssp, struct rcu_head *rhp,
        rcu_callback_t func)
{
 __call_srcu(ssp, rhp, func, 1);
}
