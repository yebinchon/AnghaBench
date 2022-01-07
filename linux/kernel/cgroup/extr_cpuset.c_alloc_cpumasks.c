
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpmasks {int delmask; int addmask; int new_cpus; } ;
struct cpuset {int subparts_cpus; int effective_cpus; int cpus_allowed; } ;
typedef int cpumask_var_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int free_cpumask_var (int ) ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static inline int alloc_cpumasks(struct cpuset *cs, struct tmpmasks *tmp)
{
 cpumask_var_t *pmask1, *pmask2, *pmask3;

 if (cs) {
  pmask1 = &cs->cpus_allowed;
  pmask2 = &cs->effective_cpus;
  pmask3 = &cs->subparts_cpus;
 } else {
  pmask1 = &tmp->new_cpus;
  pmask2 = &tmp->addmask;
  pmask3 = &tmp->delmask;
 }

 if (!zalloc_cpumask_var(pmask1, GFP_KERNEL))
  return -ENOMEM;

 if (!zalloc_cpumask_var(pmask2, GFP_KERNEL))
  goto free_one;

 if (!zalloc_cpumask_var(pmask3, GFP_KERNEL))
  goto free_two;

 return 0;

free_two:
 free_cpumask_var(*pmask2);
free_one:
 free_cpumask_var(*pmask1);
 return -ENOMEM;
}
