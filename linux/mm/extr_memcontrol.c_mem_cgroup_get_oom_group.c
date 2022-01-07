
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct mem_cgroup {int css; scalar_t__ oom_group; } ;


 int cgroup_subsys_on_dfl (int ) ;
 int css_get (int *) ;
 struct mem_cgroup* mem_cgroup_from_task (struct task_struct*) ;
 int memory_cgrp_subsys ;
 struct mem_cgroup* parent_mem_cgroup (struct mem_cgroup*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct mem_cgroup* root_mem_cgroup ;

struct mem_cgroup *mem_cgroup_get_oom_group(struct task_struct *victim,
         struct mem_cgroup *oom_domain)
{
 struct mem_cgroup *oom_group = ((void*)0);
 struct mem_cgroup *memcg;

 if (!cgroup_subsys_on_dfl(memory_cgrp_subsys))
  return ((void*)0);

 if (!oom_domain)
  oom_domain = root_mem_cgroup;

 rcu_read_lock();

 memcg = mem_cgroup_from_task(victim);
 if (memcg == root_mem_cgroup)
  goto out;






 for (; memcg; memcg = parent_mem_cgroup(memcg)) {
  if (memcg->oom_group)
   oom_group = memcg;

  if (memcg == oom_domain)
   break;
 }

 if (oom_group)
  css_get(&oom_group->css);
out:
 rcu_read_unlock();

 return oom_group;
}
