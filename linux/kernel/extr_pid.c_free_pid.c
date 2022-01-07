
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upid {int nr; struct pid_namespace* ns; } ;
struct pid_namespace {int pid_allocated; int idr; int proc_work; int child_reaper; } ;
struct pid {int level; int rcu; struct upid* numbers; } ;



 int WARN_ON (int ) ;
 int call_rcu (int *,int ) ;
 int delayed_put_pid ;
 int idr_remove (int *,int ) ;
 int pidmap_lock ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

void free_pid(struct pid *pid)
{

 int i;
 unsigned long flags;

 spin_lock_irqsave(&pidmap_lock, flags);
 for (i = 0; i <= pid->level; i++) {
  struct upid *upid = pid->numbers + i;
  struct pid_namespace *ns = upid->ns;
  switch (--ns->pid_allocated) {
  case 2:
  case 1:




   wake_up_process(ns->child_reaper);
   break;
  case 128:

   WARN_ON(ns->child_reaper);
   ns->pid_allocated = 0;

  case 0:
   schedule_work(&ns->proc_work);
   break;
  }

  idr_remove(&ns->idr, upid->nr);
 }
 spin_unlock_irqrestore(&pidmap_lock, flags);

 call_rcu(&pid->rcu, delayed_put_pid);
}
