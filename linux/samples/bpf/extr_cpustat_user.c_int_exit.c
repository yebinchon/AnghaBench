
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_stat_inject_cpu_frequency_event () ;
 int cpu_stat_inject_cpu_idle_event () ;
 int cpu_stat_print () ;
 int cpu_stat_update (int ,int ) ;
 int exit (int ) ;
 int * map_fd ;

__attribute__((used)) static void int_exit(int sig)
{
 cpu_stat_inject_cpu_idle_event();
 cpu_stat_inject_cpu_frequency_event();
 cpu_stat_update(map_fd[1], map_fd[2]);
 cpu_stat_print();
 exit(0);
}
