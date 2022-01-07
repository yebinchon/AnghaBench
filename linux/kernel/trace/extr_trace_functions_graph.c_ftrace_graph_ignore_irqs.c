
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRACE_IRQ_BIT ;
 int ftrace_graph_skip_irqs ;
 int in_irq () ;
 scalar_t__ trace_recursion_test (int ) ;

__attribute__((used)) static inline int ftrace_graph_ignore_irqs(void)
{
 if (!ftrace_graph_skip_irqs || trace_recursion_test(TRACE_IRQ_BIT))
  return 0;

 return in_irq();
}
