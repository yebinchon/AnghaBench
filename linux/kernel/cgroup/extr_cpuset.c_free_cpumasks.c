
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpmasks {int delmask; int addmask; int new_cpus; } ;
struct cpuset {int subparts_cpus; int effective_cpus; int cpus_allowed; } ;


 int free_cpumask_var (int ) ;

__attribute__((used)) static inline void free_cpumasks(struct cpuset *cs, struct tmpmasks *tmp)
{
 if (cs) {
  free_cpumask_var(cs->cpus_allowed);
  free_cpumask_var(cs->effective_cpus);
  free_cpumask_var(cs->subparts_cpus);
 }
 if (tmp) {
  free_cpumask_var(tmp->new_cpus);
  free_cpumask_var(tmp->addmask);
  free_cpumask_var(tmp->delmask);
 }
}
