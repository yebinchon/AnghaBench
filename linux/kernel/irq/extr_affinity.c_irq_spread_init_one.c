
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_clear_cpu (int,struct cpumask*) ;
 int cpumask_first (struct cpumask*) ;
 int cpumask_next (int,struct cpumask const*) ;
 int cpumask_set_cpu (int,struct cpumask*) ;
 int cpumask_test_and_clear_cpu (int,struct cpumask*) ;
 int nr_cpu_ids ;
 struct cpumask* topology_sibling_cpumask (int) ;

__attribute__((used)) static void irq_spread_init_one(struct cpumask *irqmsk, struct cpumask *nmsk,
    unsigned int cpus_per_vec)
{
 const struct cpumask *siblmsk;
 int cpu, sibl;

 for ( ; cpus_per_vec > 0; ) {
  cpu = cpumask_first(nmsk);


  if (cpu >= nr_cpu_ids)
   return;

  cpumask_clear_cpu(cpu, nmsk);
  cpumask_set_cpu(cpu, irqmsk);
  cpus_per_vec--;


  siblmsk = topology_sibling_cpumask(cpu);
  for (sibl = -1; cpus_per_vec > 0; ) {
   sibl = cpumask_next(sibl, siblmsk);
   if (sibl >= nr_cpu_ids)
    break;
   if (!cpumask_test_and_clear_cpu(sibl, nmsk))
    continue;
   cpumask_set_cpu(sibl, irqmsk);
   cpus_per_vec--;
  }
 }
}
