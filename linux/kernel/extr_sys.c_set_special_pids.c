
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pid {int dummy; } ;
struct TYPE_2__ {struct task_struct* group_leader; } ;


 int PIDTYPE_PGID ;
 int PIDTYPE_SID ;
 int change_pid (struct task_struct*,int ,struct pid*) ;
 TYPE_1__* current ;
 struct pid* task_pgrp (struct task_struct*) ;
 struct pid* task_session (struct task_struct*) ;

__attribute__((used)) static void set_special_pids(struct pid *pid)
{
 struct task_struct *curr = current->group_leader;

 if (task_session(curr) != pid)
  change_pid(curr, PIDTYPE_SID, pid);

 if (task_pgrp(curr) != pid)
  change_pid(curr, PIDTYPE_PGID, pid);
}
