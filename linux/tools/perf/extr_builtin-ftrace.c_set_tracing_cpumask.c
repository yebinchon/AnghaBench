
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {scalar_t__ nr; } ;


 int cpu_map__cpu (struct perf_cpu_map*,scalar_t__) ;
 int cpu_map__snprint_mask (struct perf_cpu_map*,char*,size_t) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int pr_debug (char*) ;
 int write_tracing_file (char*,char*) ;

__attribute__((used)) static int set_tracing_cpumask(struct perf_cpu_map *cpumap)
{
 char *cpumask;
 size_t mask_size;
 int ret;
 int last_cpu;

 last_cpu = cpu_map__cpu(cpumap, cpumap->nr - 1);
 mask_size = last_cpu / 4 + 2;
 mask_size += last_cpu / 32;

 cpumask = malloc(mask_size);
 if (cpumask == ((void*)0)) {
  pr_debug("failed to allocate cpu mask\n");
  return -1;
 }

 cpu_map__snprint_mask(cpumap, cpumask, mask_size);

 ret = write_tracing_file("tracing_cpumask", cpumask);

 free(cpumask);
 return ret;
}
