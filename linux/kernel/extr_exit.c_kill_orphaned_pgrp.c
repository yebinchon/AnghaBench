
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct task_struct* real_parent; } ;
struct pid {int dummy; } ;


 int SEND_SIG_PRIV ;
 int SIGCONT ;
 int SIGHUP ;
 int __kill_pgrp_info (int ,int ,struct pid*) ;
 scalar_t__ has_stopped_jobs (struct pid*) ;
 struct pid* task_pgrp (struct task_struct*) ;
 scalar_t__ task_session (struct task_struct*) ;
 scalar_t__ will_become_orphaned_pgrp (struct pid*,struct task_struct*) ;

__attribute__((used)) static void
kill_orphaned_pgrp(struct task_struct *tsk, struct task_struct *parent)
{
 struct pid *pgrp = task_pgrp(tsk);
 struct task_struct *ignored_task = tsk;

 if (!parent)



  parent = tsk->real_parent;
 else



  ignored_task = ((void*)0);

 if (task_pgrp(parent) != pgrp &&
     task_session(parent) == task_session(tsk) &&
     will_become_orphaned_pgrp(pgrp, ignored_task) &&
     has_stopped_jobs(pgrp)) {
  __kill_pgrp_info(SIGHUP, SEND_SIG_PRIV, pgrp);
  __kill_pgrp_info(SIGCONT, SEND_SIG_PRIV, pgrp);
 }
}
