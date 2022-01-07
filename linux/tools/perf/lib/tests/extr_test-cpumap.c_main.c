
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;


 int __T_OK ;
 int __T_START ;
 int libperf_init (int ) ;
 int libperf_print ;
 struct perf_cpu_map* perf_cpu_map__dummy_new () ;
 int perf_cpu_map__get (struct perf_cpu_map*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;

int main(int argc, char **argv)
{
 struct perf_cpu_map *cpus;

 __T_START;

 libperf_init(libperf_print);

 cpus = perf_cpu_map__dummy_new();
 if (!cpus)
  return -1;

 perf_cpu_map__get(cpus);
 perf_cpu_map__put(cpus);
 perf_cpu_map__put(cpus);

 __T_OK;
 return 0;
}
