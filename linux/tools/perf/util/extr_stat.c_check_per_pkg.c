
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int dummy; } ;
struct perf_counts_values {scalar_t__ ena; scalar_t__ run; } ;
struct evsel {unsigned long* per_pkg_mask; int per_pkg; } ;


 int ENOMEM ;
 int cpu__max_cpu () ;
 int cpu_map__get_socket (struct perf_cpu_map*,int,int *) ;
 struct perf_cpu_map* evsel__cpus (struct evsel*) ;
 scalar_t__ perf_cpu_map__empty (struct perf_cpu_map*) ;
 int test_and_set_bit (int,unsigned long*) ;
 unsigned long* zalloc (int ) ;

__attribute__((used)) static int check_per_pkg(struct evsel *counter,
    struct perf_counts_values *vals, int cpu, bool *skip)
{
 unsigned long *mask = counter->per_pkg_mask;
 struct perf_cpu_map *cpus = evsel__cpus(counter);
 int s;

 *skip = 0;

 if (!counter->per_pkg)
  return 0;

 if (perf_cpu_map__empty(cpus))
  return 0;

 if (!mask) {
  mask = zalloc(cpu__max_cpu());
  if (!mask)
   return -ENOMEM;

  counter->per_pkg_mask = mask;
 }
 if (!(vals->run && vals->ena))
  return 0;

 s = cpu_map__get_socket(cpus, cpu, ((void*)0));
 if (s < 0)
  return -1;

 *skip = test_and_set_bit(s, mask) == 1;
 return 0;
}
