
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpmasks {int dummy; } ;
struct cpuset {int partition_root_state; scalar_t__ child_ecpus_count; int cpus_allowed; } ;


 int CS_CPU_EXCLUSIVE ;
 int EINVAL ;
 int ENOMEM ;
 int PRS_ENABLED ;
 int PRS_ERROR ;
 scalar_t__ alloc_cpumasks (int *,struct tmpmasks*) ;
 scalar_t__ cpumask_empty (int ) ;
 int free_cpumasks (int *,struct tmpmasks*) ;
 struct cpuset* parent_cs (struct cpuset*) ;
 int partcmd_disable ;
 int partcmd_enable ;
 int rebuild_sched_domains_locked () ;
 struct cpuset top_cpuset ;
 int update_flag (int ,struct cpuset*,int) ;
 int update_parent_subparts_cpumask (struct cpuset*,int ,int *,struct tmpmasks*) ;
 int update_sibling_cpumasks (struct cpuset*,struct cpuset*,struct tmpmasks*) ;
 int update_tasks_cpumask (struct cpuset*) ;

__attribute__((used)) static int update_prstate(struct cpuset *cs, int val)
{
 int err;
 struct cpuset *parent = parent_cs(cs);
 struct tmpmasks tmp;

 if ((val != 0) && (val != 1))
  return -EINVAL;
 if (val == cs->partition_root_state)
  return 0;





 if (val && cs->partition_root_state)
  return -EINVAL;

 if (alloc_cpumasks(((void*)0), &tmp))
  return -ENOMEM;

 err = -EINVAL;
 if (!cs->partition_root_state) {





  if (cpumask_empty(cs->cpus_allowed))
   goto out;

  err = update_flag(CS_CPU_EXCLUSIVE, cs, 1);
  if (err)
   goto out;

  err = update_parent_subparts_cpumask(cs, partcmd_enable,
           ((void*)0), &tmp);
  if (err) {
   update_flag(CS_CPU_EXCLUSIVE, cs, 0);
   goto out;
  }
  cs->partition_root_state = PRS_ENABLED;
 } else {




  if (cs->partition_root_state == PRS_ERROR) {
   cs->partition_root_state = 0;
   update_flag(CS_CPU_EXCLUSIVE, cs, 0);
   err = 0;
   goto out;
  }

  err = update_parent_subparts_cpumask(cs, partcmd_disable,
           ((void*)0), &tmp);
  if (err)
   goto out;

  cs->partition_root_state = 0;


  update_flag(CS_CPU_EXCLUSIVE, cs, 0);
 }





 if (parent != &top_cpuset)
  update_tasks_cpumask(parent);

 if (parent->child_ecpus_count)
  update_sibling_cpumasks(parent, cs, &tmp);

 rebuild_sched_domains_locked();
out:
 free_cpumasks(((void*)0), &tmp);
 return err;
}
