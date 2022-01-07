
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int dynticks; } ;


 int RCU_DYNTICK_CTRL_MASK ;
 int atomic_add_return (int ,int *) ;

int rcu_dynticks_snap(struct rcu_data *rdp)
{
 int snap = atomic_add_return(0, &rdp->dynticks);

 return snap & ~RCU_DYNTICK_CTRL_MASK;
}
