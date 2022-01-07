
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {struct cpumask* effective_cpus; struct cpumask* cpus_allowed; int subparts_cpus; scalar_t__ nr_subparts_cpus; } ;
struct cpumask {int dummy; } ;


 struct cpumask* cpu_active_mask ;
 int cpumask_and (struct cpumask*,struct cpumask*,struct cpumask*) ;
 int cpumask_or (struct cpumask*,struct cpumask*,int ) ;

__attribute__((used)) static void compute_effective_cpumask(struct cpumask *new_cpus,
          struct cpuset *cs, struct cpuset *parent)
{
 if (parent->nr_subparts_cpus) {
  cpumask_or(new_cpus, parent->effective_cpus,
      parent->subparts_cpus);
  cpumask_and(new_cpus, new_cpus, cs->cpus_allowed);
  cpumask_and(new_cpus, new_cpus, cpu_active_mask);
 } else {
  cpumask_and(new_cpus, cs->cpus_allowed, parent->effective_cpus);
 }
}
