
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pids_cgroup {int events_file; int events_limit; } ;
struct cgroup_subsys_state {int cgroup; } ;


 int atomic64_inc_return (int *) ;
 int cgroup_file_notify (int *) ;
 struct pids_cgroup* css_pids (struct cgroup_subsys_state*) ;
 int current ;
 int pids_cgrp_id ;
 int pids_try_charge (struct pids_cgroup*,int) ;
 int pr_cont (char*) ;
 int pr_cont_cgroup_path (int ) ;
 int pr_info (char*) ;
 struct cgroup_subsys_state* task_css_check (int ,int ,int) ;

__attribute__((used)) static int pids_can_fork(struct task_struct *task)
{
 struct cgroup_subsys_state *css;
 struct pids_cgroup *pids;
 int err;

 css = task_css_check(current, pids_cgrp_id, 1);
 pids = css_pids(css);
 err = pids_try_charge(pids, 1);
 if (err) {

  if (atomic64_inc_return(&pids->events_limit) == 1) {
   pr_info("cgroup: fork rejected by pids controller in ");
   pr_cont_cgroup_path(css->cgroup);
   pr_cont("\n");
  }
  cgroup_file_notify(&pids->events_file);
 }
 return err;
}
