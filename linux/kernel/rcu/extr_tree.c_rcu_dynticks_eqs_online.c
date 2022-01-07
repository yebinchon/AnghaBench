
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int dynticks; } ;


 int RCU_DYNTICK_CTRL_CTR ;
 int atomic_add (int,int *) ;
 int atomic_read (int *) ;
 int rcu_data ;
 struct rcu_data* this_cpu_ptr (int *) ;

__attribute__((used)) static void rcu_dynticks_eqs_online(void)
{
 struct rcu_data *rdp = this_cpu_ptr(&rcu_data);

 if (atomic_read(&rdp->dynticks) & RCU_DYNTICK_CTRL_CTR)
  return;
 atomic_add(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
}
