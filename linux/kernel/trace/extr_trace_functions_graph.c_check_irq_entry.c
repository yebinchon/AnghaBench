
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trace_iterator {int cpu; struct fgraph_data* private; } ;
struct fgraph_data {int cpu_data; } ;
struct TYPE_2__ {int depth_irq; } ;


 int TRACE_GRAPH_PRINT_IRQS ;
 scalar_t__ __irqentry_text_end ;
 scalar_t__ __irqentry_text_start ;
 TYPE_1__* per_cpu_ptr (int ,int) ;

__attribute__((used)) static int
check_irq_entry(struct trace_iterator *iter, u32 flags,
  unsigned long addr, int depth)
{
 int cpu = iter->cpu;
 int *depth_irq;
 struct fgraph_data *data = iter->private;






 if ((flags & TRACE_GRAPH_PRINT_IRQS) ||
     (!data))
  return 0;

 depth_irq = &(per_cpu_ptr(data->cpu_data, cpu)->depth_irq);




 if (*depth_irq >= 0)
  return 1;

 if ((addr < (unsigned long)__irqentry_text_start) ||
     (addr >= (unsigned long)__irqentry_text_end))
  return 0;




 *depth_irq = depth;
 return 1;
}
