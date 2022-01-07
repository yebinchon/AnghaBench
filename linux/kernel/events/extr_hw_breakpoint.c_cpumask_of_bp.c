
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ cpu; } ;
struct cpumask {int dummy; } ;


 struct cpumask const* cpu_possible_mask ;
 struct cpumask const* cpumask_of (scalar_t__) ;

__attribute__((used)) static const struct cpumask *cpumask_of_bp(struct perf_event *bp)
{
 if (bp->cpu >= 0)
  return cpumask_of(bp->cpu);
 return cpu_possible_mask;
}
