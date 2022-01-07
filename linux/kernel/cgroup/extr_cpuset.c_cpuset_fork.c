
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int mems_allowed; } ;
struct TYPE_2__ {int mems_allowed; int cpus_ptr; } ;


 int cpuset_cgrp_id ;
 TYPE_1__* current ;
 int set_cpus_allowed_ptr (struct task_struct*,int ) ;
 scalar_t__ task_css_is_root (struct task_struct*,int ) ;

__attribute__((used)) static void cpuset_fork(struct task_struct *task)
{
 if (task_css_is_root(task, cpuset_cgrp_id))
  return;

 set_cpus_allowed_ptr(task, current->cpus_ptr);
 task->mems_allowed = current->mems_allowed;
}
