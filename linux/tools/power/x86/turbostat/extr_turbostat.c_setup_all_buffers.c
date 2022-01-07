
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int allocate_counters (int *,int *,int *) ;
 int allocate_fd_percpu () ;
 int allocate_irq_buffers () ;
 int allocate_output_buffer () ;
 int core_even ;
 int core_odd ;
 int for_all_proc_cpus (int ) ;
 int initialize_counters ;
 int package_even ;
 int package_odd ;
 int thread_even ;
 int thread_odd ;
 int topology_probe () ;

void setup_all_buffers(void)
{
 topology_probe();
 allocate_irq_buffers();
 allocate_fd_percpu();
 allocate_counters(&thread_even, &core_even, &package_even);
 allocate_counters(&thread_odd, &core_odd, &package_odd);
 allocate_output_buffer();
 for_all_proc_cpus(initialize_counters);
}
