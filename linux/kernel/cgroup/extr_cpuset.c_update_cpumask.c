
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpmasks {int new_cpus; int delmask; int addmask; } ;
struct cpuset {scalar_t__ child_ecpus_count; scalar_t__ partition_root_state; int subparts_cpus; scalar_t__ nr_subparts_cpus; int cpus_allowed; int effective_cpus; } ;


 int EACCES ;
 int EINVAL ;
 int callback_lock ;
 int cpulist_parse (char const*,int ) ;
 int cpumask_andnot (int ,int ,int ) ;
 int cpumask_clear (int ) ;
 int cpumask_copy (int ,int ) ;
 scalar_t__ cpumask_empty (int ) ;
 scalar_t__ cpumask_equal (int ,int ) ;
 int cpumask_subset (int ,int ) ;
 scalar_t__ cpumask_weight (int ) ;
 struct cpuset* parent_cs (struct cpuset*) ;
 int partcmd_update ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cpuset top_cpuset ;
 int update_cpumasks_hier (struct cpuset*,struct tmpmasks*) ;
 scalar_t__ update_parent_subparts_cpumask (struct cpuset*,int ,int ,struct tmpmasks*) ;
 int update_sibling_cpumasks (struct cpuset*,struct cpuset*,struct tmpmasks*) ;
 int validate_change (struct cpuset*,struct cpuset*) ;

__attribute__((used)) static int update_cpumask(struct cpuset *cs, struct cpuset *trialcs,
     const char *buf)
{
 int retval;
 struct tmpmasks tmp;


 if (cs == &top_cpuset)
  return -EACCES;







 if (!*buf) {
  cpumask_clear(trialcs->cpus_allowed);
 } else {
  retval = cpulist_parse(buf, trialcs->cpus_allowed);
  if (retval < 0)
   return retval;

  if (!cpumask_subset(trialcs->cpus_allowed,
        top_cpuset.cpus_allowed))
   return -EINVAL;
 }


 if (cpumask_equal(cs->cpus_allowed, trialcs->cpus_allowed))
  return 0;

 retval = validate_change(cs, trialcs);
 if (retval < 0)
  return retval;
 if (cs->partition_root_state) {

  if (cpumask_empty(trialcs->cpus_allowed))
   return -EINVAL;
  if (update_parent_subparts_cpumask(cs, partcmd_update,
     trialcs->cpus_allowed, &tmp) < 0)
   return -EINVAL;
 }

 spin_lock_irq(&callback_lock);
 cpumask_copy(cs->cpus_allowed, trialcs->cpus_allowed);




 if (cs->nr_subparts_cpus) {
  cpumask_andnot(cs->subparts_cpus, cs->subparts_cpus,
          cs->cpus_allowed);
  cs->nr_subparts_cpus = cpumask_weight(cs->subparts_cpus);
 }
 spin_unlock_irq(&callback_lock);

 update_cpumasks_hier(cs, &tmp);

 if (cs->partition_root_state) {
  struct cpuset *parent = parent_cs(cs);





  if (parent->child_ecpus_count)
   update_sibling_cpumasks(parent, cs, &tmp);
 }
 return 0;
}
