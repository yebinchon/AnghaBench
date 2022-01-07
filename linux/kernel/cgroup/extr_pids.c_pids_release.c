
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pids_cgroup {int dummy; } ;


 struct pids_cgroup* css_pids (int ) ;
 int pids_cgrp_id ;
 int pids_uncharge (struct pids_cgroup*,int) ;
 int task_css (struct task_struct*,int ) ;

__attribute__((used)) static void pids_release(struct task_struct *task)
{
 struct pids_cgroup *pids = css_pids(task_css(task, pids_cgrp_id));

 pids_uncharge(pids, 1);
}
