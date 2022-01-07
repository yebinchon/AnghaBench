
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;


 int KBUILD_MODNAME ;
 int call_rcu (struct rcu_head*,int ) ;
 int destroy_rcu_head_on_stack (struct rcu_head*) ;
 int init_rcu_head_on_stack (struct rcu_head*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pr_alert (char*,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_barrier () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rcu_torture_err_cb ;
 int rcu_torture_leak_cb ;

__attribute__((used)) static void rcu_test_debug_objects(void)
{
 pr_alert("%s: !CONFIG_DEBUG_OBJECTS_RCU_HEAD, not testing duplicate call_rcu()\n", KBUILD_MODNAME);

}
