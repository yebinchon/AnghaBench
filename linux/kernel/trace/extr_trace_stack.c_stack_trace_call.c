
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct ftrace_ops {int dummy; } ;


 scalar_t__ MCOUNT_INSN_SIZE ;
 int __this_cpu_dec (int ) ;
 int __this_cpu_inc (int ) ;
 int __this_cpu_read (int ) ;
 int check_stack (unsigned long,unsigned long*) ;
 int disable_stack_tracer ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int rcu_is_watching () ;

__attribute__((used)) static void
stack_trace_call(unsigned long ip, unsigned long parent_ip,
   struct ftrace_ops *op, struct pt_regs *pt_regs)
{
 unsigned long stack;

 preempt_disable_notrace();


 __this_cpu_inc(disable_stack_tracer);
 if (__this_cpu_read(disable_stack_tracer) != 1)
  goto out;


 if (!rcu_is_watching())
  goto out;

 ip += MCOUNT_INSN_SIZE;

 check_stack(ip, &stack);

 out:
 __this_cpu_dec(disable_stack_tracer);

 preempt_enable_notrace();
}
