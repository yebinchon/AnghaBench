
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_data {scalar_t__ dynticks_nmi_nesting; int dynticks_nesting; int dynticks; } ;


 int CONFIG_RCU_EQS_DEBUG ;
 scalar_t__ DYNTICK_IRQ_NONIDLE ;
 scalar_t__ IS_ENABLED (int ) ;
 int TPS (char*) ;
 int WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int,int ) ;
 int current ;
 int do_nocb_deferred_wakeup (struct rcu_data*) ;
 int is_idle_task (int ) ;
 int lockdep_assert_irqs_disabled () ;
 int rcu_data ;
 int rcu_dynticks_eqs_enter () ;
 int rcu_dynticks_task_enter () ;
 int rcu_preempt_deferred_qs (int ) ;
 int rcu_prepare_for_idle () ;
 struct rcu_data* this_cpu_ptr (int *) ;
 int trace_rcu_dyntick (int ,int,int ,int ) ;

__attribute__((used)) static void rcu_eqs_enter(bool user)
{
 struct rcu_data *rdp = this_cpu_ptr(&rcu_data);

 WARN_ON_ONCE(rdp->dynticks_nmi_nesting != DYNTICK_IRQ_NONIDLE);
 WRITE_ONCE(rdp->dynticks_nmi_nesting, 0);
 WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) &&
       rdp->dynticks_nesting == 0);
 if (rdp->dynticks_nesting != 1) {
  rdp->dynticks_nesting--;
  return;
 }

 lockdep_assert_irqs_disabled();
 trace_rcu_dyntick(TPS("Start"), rdp->dynticks_nesting, 0, rdp->dynticks);
 WARN_ON_ONCE(IS_ENABLED(CONFIG_RCU_EQS_DEBUG) && !user && !is_idle_task(current));
 rdp = this_cpu_ptr(&rcu_data);
 do_nocb_deferred_wakeup(rdp);
 rcu_prepare_for_idle();
 rcu_preempt_deferred_qs(current);
 WRITE_ONCE(rdp->dynticks_nesting, 0);
 rcu_dynticks_eqs_enter();
 rcu_dynticks_task_enter();
}
