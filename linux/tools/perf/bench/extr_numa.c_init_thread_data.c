
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread_data {int bind_cpumask; int bind_node; } ;
typedef int ssize_t ;
struct TYPE_3__ {int nr_tasks; int nr_cpus; } ;
struct TYPE_4__ {TYPE_1__ p; struct thread_data* threads; } ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int NUMA_NO_NODE ;
 TYPE_2__* g ;
 struct thread_data* zalloc_shared_data (int) ;

__attribute__((used)) static void init_thread_data(void)
{
 ssize_t size = sizeof(*g->threads)*g->p.nr_tasks;
 int t;

 g->threads = zalloc_shared_data(size);

 for (t = 0; t < g->p.nr_tasks; t++) {
  struct thread_data *td = g->threads + t;
  int cpu;


  td->bind_node = NUMA_NO_NODE;


  CPU_ZERO(&td->bind_cpumask);
  for (cpu = 0; cpu < g->p.nr_cpus; cpu++)
   CPU_SET(cpu, &td->bind_cpumask);
 }
}
