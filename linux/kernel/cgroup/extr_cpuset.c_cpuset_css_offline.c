
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int use_parent_ecpus; int flags; int child_ecpus_count; } ;
struct cgroup_subsys_state {int dummy; } ;


 int CS_ONLINE ;
 int CS_SCHED_LOAD_BALANCE ;
 int cgroup_subsys_on_dfl (int ) ;
 int clear_bit (int ,int *) ;
 int cpuset_cgrp_subsys ;
 int cpuset_dec () ;
 int cpuset_rwsem ;
 struct cpuset* css_cs (struct cgroup_subsys_state*) ;
 int get_online_cpus () ;
 scalar_t__ is_partition_root (struct cpuset*) ;
 scalar_t__ is_sched_load_balance (struct cpuset*) ;
 struct cpuset* parent_cs (struct cpuset*) ;
 int percpu_down_write (int *) ;
 int percpu_up_write (int *) ;
 int put_online_cpus () ;
 int update_flag (int ,struct cpuset*,int ) ;
 int update_prstate (struct cpuset*,int ) ;

__attribute__((used)) static void cpuset_css_offline(struct cgroup_subsys_state *css)
{
 struct cpuset *cs = css_cs(css);

 get_online_cpus();
 percpu_down_write(&cpuset_rwsem);

 if (is_partition_root(cs))
  update_prstate(cs, 0);

 if (!cgroup_subsys_on_dfl(cpuset_cgrp_subsys) &&
     is_sched_load_balance(cs))
  update_flag(CS_SCHED_LOAD_BALANCE, cs, 0);

 if (cs->use_parent_ecpus) {
  struct cpuset *parent = parent_cs(cs);

  cs->use_parent_ecpus = 0;
  parent->child_ecpus_count--;
 }

 cpuset_dec();
 clear_bit(CS_ONLINE, &cs->flags);

 percpu_up_write(&cpuset_rwsem);
 put_online_cpus();
}
