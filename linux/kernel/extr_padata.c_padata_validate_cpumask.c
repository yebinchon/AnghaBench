
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_instance {int flags; } ;
struct cpumask {int dummy; } ;


 int PADATA_INVALID ;
 int cpu_online_mask ;
 int cpumask_intersects (struct cpumask const*,int ) ;

__attribute__((used)) static bool padata_validate_cpumask(struct padata_instance *pinst,
        const struct cpumask *cpumask)
{
 if (!cpumask_intersects(cpumask, cpu_online_mask)) {
  pinst->flags |= PADATA_INVALID;
  return 0;
 }

 pinst->flags &= ~PADATA_INVALID;
 return 1;
}
