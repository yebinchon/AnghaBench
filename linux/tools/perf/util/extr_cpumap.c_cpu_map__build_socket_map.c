
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 int cpu_map__build_map (struct perf_cpu_map*,struct perf_cpu_map**,int ,int *) ;
 int cpu_map__get_socket ;

int cpu_map__build_socket_map(struct perf_cpu_map *cpus, struct perf_cpu_map **sockp)
{
 return cpu_map__build_map(cpus, sockp, cpu_map__get_socket, ((void*)0));
}
