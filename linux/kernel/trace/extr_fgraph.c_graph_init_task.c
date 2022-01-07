
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct ftrace_ret_stack* ret_stack; scalar_t__ ftrace_timestamp; int trace_overrun; int tracing_graph_pause; } ;
struct ftrace_ret_stack {int dummy; } ;


 int atomic_set (int *,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void
graph_init_task(struct task_struct *t, struct ftrace_ret_stack *ret_stack)
{
 atomic_set(&t->tracing_graph_pause, 0);
 atomic_set(&t->trace_overrun, 0);
 t->ftrace_timestamp = 0;

 smp_wmb();
 t->ret_stack = ret_stack;
}
