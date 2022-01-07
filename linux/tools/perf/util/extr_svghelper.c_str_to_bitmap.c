
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_map {int nr; int* map; } ;
typedef int cpumask_t ;


 int cpumask_bits (int *) ;
 struct perf_cpu_map* perf_cpu_map__new (char*) ;
 int perf_cpu_map__put (struct perf_cpu_map*) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int str_to_bitmap(char *s, cpumask_t *b, int nr_cpus)
{
 int i;
 int ret = 0;
 struct perf_cpu_map *m;
 int c;

 m = perf_cpu_map__new(s);
 if (!m)
  return -1;

 for (i = 0; i < m->nr; i++) {
  c = m->map[i];
  if (c >= nr_cpus) {
   ret = -1;
   break;
  }

  set_bit(c, cpumask_bits(b));
 }

 perf_cpu_map__put(m);

 return ret;
}
