
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_cpu_num; scalar_t__ num_cpus; } ;


 void* calloc (scalar_t__,int) ;
 int err (int,char*,scalar_t__) ;
 int * irq_column_2_cpu ;
 int * irqs_per_cpu ;
 TYPE_1__ topo ;

void allocate_irq_buffers(void)
{
 irq_column_2_cpu = calloc(topo.num_cpus, sizeof(int));
 if (irq_column_2_cpu == ((void*)0))
  err(-1, "calloc %d", topo.num_cpus);

 irqs_per_cpu = calloc(topo.max_cpu_num + 1, sizeof(int));
 if (irqs_per_cpu == ((void*)0))
  err(-1, "calloc %d", topo.max_cpu_num + 1);
}
