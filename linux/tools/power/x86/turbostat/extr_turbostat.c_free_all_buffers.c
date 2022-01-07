
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int * put_ids; } ;
struct TYPE_13__ {int max_cpu_num; } ;


 int CPU_FREE (int *) ;
 TYPE_2__* core_even ;
 TYPE_2__* core_odd ;
 int * cpu_affinity_set ;
 scalar_t__ cpu_affinity_setsize ;
 int * cpu_present_set ;
 scalar_t__ cpu_present_setsize ;
 TYPE_2__* cpus ;
 int free (TYPE_2__*) ;
 int free_fd_percpu () ;
 TYPE_2__* irq_column_2_cpu ;
 TYPE_2__* irqs_per_cpu ;
 int * outp ;
 TYPE_2__* output_buffer ;
 TYPE_2__* package_even ;
 TYPE_2__* package_odd ;
 TYPE_2__* thread_even ;
 TYPE_2__* thread_odd ;
 TYPE_1__ topo ;

void free_all_buffers(void)
{
 int i;

 CPU_FREE(cpu_present_set);
 cpu_present_set = ((void*)0);
 cpu_present_setsize = 0;

 CPU_FREE(cpu_affinity_set);
 cpu_affinity_set = ((void*)0);
 cpu_affinity_setsize = 0;

 free(thread_even);
 free(core_even);
 free(package_even);

 thread_even = ((void*)0);
 core_even = ((void*)0);
 package_even = ((void*)0);

 free(thread_odd);
 free(core_odd);
 free(package_odd);

 thread_odd = ((void*)0);
 core_odd = ((void*)0);
 package_odd = ((void*)0);

 free(output_buffer);
 output_buffer = ((void*)0);
 outp = ((void*)0);

 free_fd_percpu();

 free(irq_column_2_cpu);
 free(irqs_per_cpu);

 for (i = 0; i <= topo.max_cpu_num; ++i) {
  if (cpus[i].put_ids)
   CPU_FREE(cpus[i].put_ids);
 }
 free(cpus);
}
