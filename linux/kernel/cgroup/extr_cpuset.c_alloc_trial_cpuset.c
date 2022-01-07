
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int effective_cpus; int cpus_allowed; } ;


 int GFP_KERNEL ;
 scalar_t__ alloc_cpumasks (struct cpuset*,int *) ;
 int cpumask_copy (int ,int ) ;
 int kfree (struct cpuset*) ;
 struct cpuset* kmemdup (struct cpuset*,int,int ) ;

__attribute__((used)) static struct cpuset *alloc_trial_cpuset(struct cpuset *cs)
{
 struct cpuset *trial;

 trial = kmemdup(cs, sizeof(*cs), GFP_KERNEL);
 if (!trial)
  return ((void*)0);

 if (alloc_cpumasks(trial, ((void*)0))) {
  kfree(trial);
  return ((void*)0);
 }

 cpumask_copy(trial->cpus_allowed, cs->cpus_allowed);
 cpumask_copy(trial->effective_cpus, cs->effective_cpus);
 return trial;
}
