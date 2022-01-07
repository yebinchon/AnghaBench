
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
typedef int FILE ;


 int MAX_NR_CPUS ;
 int WARN_ONCE (int,char*,int) ;
 struct perf_cpu_map* cpu_map__default_new () ;
 struct perf_cpu_map* cpu_map__trim_new (int,int*) ;
 int free (int*) ;
 int fscanf (int *,char*,int*,char*) ;
 int* realloc (int*,int) ;

struct perf_cpu_map *perf_cpu_map__read(FILE *file)
{
 struct perf_cpu_map *cpus = ((void*)0);
 int nr_cpus = 0;
 int *tmp_cpus = ((void*)0), *tmp;
 int max_entries = 0;
 int n, cpu, prev;
 char sep;

 sep = 0;
 prev = -1;
 for (;;) {
  n = fscanf(file, "%u%c", &cpu, &sep);
  if (n <= 0)
   break;
  if (prev >= 0) {
   int new_max = nr_cpus + cpu - prev - 1;

   WARN_ONCE(new_max >= MAX_NR_CPUS, "Perf can support %d CPUs. "
         "Consider raising MAX_NR_CPUS\n", MAX_NR_CPUS);

   if (new_max >= max_entries) {
    max_entries = new_max + MAX_NR_CPUS / 2;
    tmp = realloc(tmp_cpus, max_entries * sizeof(int));
    if (tmp == ((void*)0))
     goto out_free_tmp;
    tmp_cpus = tmp;
   }

   while (++prev < cpu)
    tmp_cpus[nr_cpus++] = prev;
  }
  if (nr_cpus == max_entries) {
   max_entries += MAX_NR_CPUS;
   tmp = realloc(tmp_cpus, max_entries * sizeof(int));
   if (tmp == ((void*)0))
    goto out_free_tmp;
   tmp_cpus = tmp;
  }

  tmp_cpus[nr_cpus++] = cpu;
  if (n == 2 && sep == '-')
   prev = cpu;
  else
   prev = -1;
  if (n == 1 || sep == '\n')
   break;
 }

 if (nr_cpus > 0)
  cpus = cpu_map__trim_new(nr_cpus, tmp_cpus);
 else
  cpus = cpu_map__default_new();
out_free_tmp:
 free(tmp_cpus);
 return cpus;
}
