
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 double** current_count ;
 int dprint (char*,int ,double,double,double,...) ;
 int * is_valid ;
 TYPE_1__* nhm_cstates ;
 double** previous_count ;
 double tsc_at_measure_end ;
 double tsc_at_measure_start ;

__attribute__((used)) static int nhm_get_count_percent(unsigned int id, double *percent,
     unsigned int cpu)
{
 *percent = 0.0;

 if (!is_valid[cpu])
  return -1;

 *percent = (100.0 *
  (current_count[id][cpu] - previous_count[id][cpu])) /
  (tsc_at_measure_end - tsc_at_measure_start);

 dprint("%s: previous: %llu - current: %llu - (%u)\n",
  nhm_cstates[id].name, previous_count[id][cpu],
  current_count[id][cpu], cpu);

 dprint("%s: tsc_diff: %llu - count_diff: %llu - percent: %2.f (%u)\n",
        nhm_cstates[id].name,
        (unsigned long long) tsc_at_measure_end - tsc_at_measure_start,
        current_count[id][cpu] - previous_count[id][cpu],
        *percent, cpu);

 return 0;
}
