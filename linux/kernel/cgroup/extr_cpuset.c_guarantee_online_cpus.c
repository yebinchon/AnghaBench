
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int effective_cpus; } ;
struct cpumask {int dummy; } ;


 int cpu_online_mask ;
 int cpumask_and (struct cpumask*,int ,int ) ;
 int cpumask_copy (struct cpumask*,int ) ;
 int cpumask_intersects (int ,int ) ;
 struct cpuset* parent_cs (struct cpuset*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void guarantee_online_cpus(struct cpuset *cs, struct cpumask *pmask)
{
 while (!cpumask_intersects(cs->effective_cpus, cpu_online_mask)) {
  cs = parent_cs(cs);
  if (unlikely(!cs)) {







   cpumask_copy(pmask, cpu_online_mask);
   return;
  }
 }
 cpumask_and(pmask, cs->effective_cpus, cpu_online_mask);
}
