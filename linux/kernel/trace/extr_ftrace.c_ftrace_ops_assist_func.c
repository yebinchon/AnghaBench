
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct ftrace_ops {int flags; int (* func ) (unsigned long,unsigned long,struct ftrace_ops*,struct pt_regs*) ;} ;


 int FTRACE_OPS_FL_RCU ;
 int TRACE_LIST_MAX ;
 int TRACE_LIST_START ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int rcu_is_watching () ;
 int stub1 (unsigned long,unsigned long,struct ftrace_ops*,struct pt_regs*) ;
 int trace_clear_recursion (int) ;
 int trace_test_and_set_recursion (int ,int ) ;

__attribute__((used)) static void ftrace_ops_assist_func(unsigned long ip, unsigned long parent_ip,
       struct ftrace_ops *op, struct pt_regs *regs)
{
 int bit;

 if ((op->flags & FTRACE_OPS_FL_RCU) && !rcu_is_watching())
  return;

 bit = trace_test_and_set_recursion(TRACE_LIST_START, TRACE_LIST_MAX);
 if (bit < 0)
  return;

 preempt_disable_notrace();

 op->func(ip, parent_ip, op, regs);

 preempt_enable_notrace();
 trace_clear_recursion(bit);
}
