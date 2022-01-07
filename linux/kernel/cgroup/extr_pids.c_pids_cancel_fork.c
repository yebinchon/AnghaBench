
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pids_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;


 struct pids_cgroup* css_pids (struct cgroup_subsys_state*) ;
 int current ;
 int pids_cgrp_id ;
 int pids_uncharge (struct pids_cgroup*,int) ;
 struct cgroup_subsys_state* task_css_check (int ,int ,int) ;

__attribute__((used)) static void pids_cancel_fork(struct task_struct *task)
{
 struct cgroup_subsys_state *css;
 struct pids_cgroup *pids;

 css = task_css_check(current, pids_cgrp_id, 1);
 pids = css_pids(css);
 pids_uncharge(pids, 1);
}
