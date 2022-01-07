
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int cgroup; } ;
struct mem_cgroup {TYPE_1__ css; } ;


 int memory_cgrp_id ;
 int pr_cont (char*) ;
 int pr_cont_cgroup_path (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_cgroup (struct task_struct*,int ) ;

void mem_cgroup_print_oom_context(struct mem_cgroup *memcg, struct task_struct *p)
{
 rcu_read_lock();

 if (memcg) {
  pr_cont(",oom_memcg=");
  pr_cont_cgroup_path(memcg->css.cgroup);
 } else
  pr_cont(",global_oom");
 if (p) {
  pr_cont(",task_memcg=");
  pr_cont_cgroup_path(task_cgroup(p, memory_cgrp_id));
 }
 rcu_read_unlock();
}
