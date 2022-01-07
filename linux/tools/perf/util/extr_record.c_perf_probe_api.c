
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int* map; } ;
typedef int setup_probe_fn_t ;


 int EAGAIN ;
 struct perf_cpu_map* perf_cpu_map__new (int *) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int perf_do_probe_api (int ,int,char const*) ;

__attribute__((used)) static bool perf_probe_api(setup_probe_fn_t fn)
{
 const char *try[] = {"cycles:u", "instructions:u", "cpu-clock:u", ((void*)0)};
 struct perf_cpu_map *cpus;
 int cpu, ret, i = 0;

 cpus = perf_cpu_map__new(((void*)0));
 if (!cpus)
  return 0;
 cpu = cpus->map[0];
 perf_cpu_map__put(cpus);

 do {
  ret = perf_do_probe_api(fn, cpu, try[i++]);
  if (!ret)
   return 1;
 } while (ret == -EAGAIN && try[i]);

 return 0;
}
