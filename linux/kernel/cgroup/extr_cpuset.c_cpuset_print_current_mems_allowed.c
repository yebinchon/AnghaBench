
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cgroup {int dummy; } ;
struct TYPE_7__ {int mems_allowed; } ;
struct TYPE_5__ {struct cgroup* cgroup; } ;
struct TYPE_6__ {TYPE_1__ css; } ;


 TYPE_3__* current ;
 int nodemask_pr_args (int *) ;
 int pr_cont (char*,...) ;
 int pr_cont_cgroup_name (struct cgroup*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 TYPE_2__* task_cs (TYPE_3__*) ;

void cpuset_print_current_mems_allowed(void)
{
 struct cgroup *cgrp;

 rcu_read_lock();

 cgrp = task_cs(current)->css.cgroup;
 pr_cont(",cpuset=");
 pr_cont_cgroup_name(cgrp);
 pr_cont(",mems_allowed=%*pbl",
  nodemask_pr_args(&current->mems_allowed));

 rcu_read_unlock();
}
