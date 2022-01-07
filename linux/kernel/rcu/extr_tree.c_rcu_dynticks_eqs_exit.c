
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {int dynticks; } ;


 int CONFIG_RCU_EQS_DEBUG ;
 scalar_t__ IS_ENABLED (int ) ;
 int RCU_DYNTICK_CTRL_CTR ;
 int RCU_DYNTICK_CTRL_MASK ;
 int WARN_ON_ONCE (int) ;
 int atomic_add_return (int,int *) ;
 int atomic_andnot (int,int *) ;
 int rcu_data ;
 int rcu_eqs_special_exit () ;
 int smp_mb__after_atomic () ;
 struct rcu_data* this_cpu_ptr (int *) ;

__attribute__((used)) static void rcu_dynticks_eqs_exit(void)
{
 struct rcu_data *rdp = this_cpu_ptr(&rcu_data);
 int seq;






 seq = atomic_add_return(RCU_DYNTICK_CTRL_CTR, &rdp->dynticks);
 WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
       !(seq & RCU_DYNTICK_CTRL_CTR));
 if (seq & RCU_DYNTICK_CTRL_MASK) {
  atomic_andnot(RCU_DYNTICK_CTRL_MASK, &rdp->dynticks);
  smp_mb__after_atomic();

  rcu_eqs_special_exit();
 }
}
