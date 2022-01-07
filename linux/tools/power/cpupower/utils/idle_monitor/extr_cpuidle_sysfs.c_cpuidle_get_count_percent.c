
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 TYPE_1__* cpuidle_cstates ;
 unsigned long long** current_count ;
 int dprint (char*,int ,double,unsigned long long,double,...) ;
 unsigned long long** previous_count ;
 double timediff ;

__attribute__((used)) static int cpuidle_get_count_percent(unsigned int id, double *percent,
         unsigned int cpu)
{
 unsigned long long statediff = current_count[cpu][id]
  - previous_count[cpu][id];
 dprint("%s: - diff: %llu - percent: %f (%u)\n",
        cpuidle_cstates[id].name, timediff, *percent, cpu);

 if (timediff == 0)
  *percent = 0.0;
 else
  *percent = ((100.0 * statediff) / timediff);

 dprint("%s: - timediff: %llu - statediff: %llu - percent: %f (%u)\n",
        cpuidle_cstates[id].name, timediff, statediff, *percent, cpu);

 return 0;
}
