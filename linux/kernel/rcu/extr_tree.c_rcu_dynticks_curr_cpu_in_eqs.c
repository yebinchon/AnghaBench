
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int dynticks; } ;


 int RCU_DYNTICK_CTRL_CTR ;
 int atomic_read (int *) ;
 int rcu_data ;
 struct rcu_data* this_cpu_ptr (int *) ;

bool rcu_dynticks_curr_cpu_in_eqs(void)
{
 struct rcu_data *rdp = this_cpu_ptr(&rcu_data);

 return !(atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR);
}
