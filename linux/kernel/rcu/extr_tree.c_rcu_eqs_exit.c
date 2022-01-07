
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {long dynticks_nesting; int dynticks_nmi_nesting; int dynticks; } ;


 int CONFIG_RCU_EQS_DEBUG ;
 int DYNTICK_IRQ_NONIDLE ;
 scalar_t__ IS_ENABLED (int ) ;
 int TPS (char*) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (long,int) ;
 int current ;
 int is_idle_task (int ) ;
 int lockdep_assert_irqs_disabled () ;
 int rcu_cleanup_after_idle () ;
 int rcu_data ;
 int rcu_dynticks_eqs_exit () ;
 int rcu_dynticks_task_exit () ;
 struct rcu_data* this_cpu_ptr (int *) ;
 int trace_rcu_dyntick (int ,long,int,int ) ;

__attribute__((used)) static void rcu_eqs_exit(bool user)
{
 struct rcu_data *rdp;
 long oldval;

 lockdep_assert_irqs_disabled();
 rdp = this_cpu_ptr(&rcu_data);
 oldval = rdp->dynticks_nesting;
 WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) && oldval < 0);
 if (oldval) {
  rdp->dynticks_nesting++;
  return;
 }
 rcu_dynticks_task_exit();
 rcu_dynticks_eqs_exit();
 rcu_cleanup_after_idle();
 trace_rcu_dyntick(TPS("End"), rdp->dynticks_nesting, 1, rdp->dynticks);
 WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) && !user && !is_idle_task(current));
 WRITE_ONCE(rdp->dynticks_nesting, 1);
 WARN_ON_ONCE(rdp->dynticks_nmi_nesting);
 WRITE_ONCE(rdp->dynticks_nmi_nesting, DYNTICK_IRQ_NONIDLE);
}
