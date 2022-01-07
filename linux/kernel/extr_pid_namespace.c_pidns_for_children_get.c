
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* nsproxy; } ;
struct ns_common {int dummy; } ;
struct pid_namespace {struct ns_common ns; int child_reaper; } ;
struct TYPE_2__ {struct pid_namespace* pid_ns_for_children; } ;


 int get_pid_ns (struct pid_namespace*) ;
 int put_pid_ns (struct pid_namespace*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int tasklist_lock ;

__attribute__((used)) static struct ns_common *pidns_for_children_get(struct task_struct *task)
{
 struct pid_namespace *ns = ((void*)0);

 task_lock(task);
 if (task->nsproxy) {
  ns = task->nsproxy->pid_ns_for_children;
  get_pid_ns(ns);
 }
 task_unlock(task);

 if (ns) {
  read_lock(&tasklist_lock);
  if (!ns->child_reaper) {
   put_pid_ns(ns);
   ns = ((void*)0);
  }
  read_unlock(&tasklist_lock);
 }

 return ns ? &ns->ns : ((void*)0);
}
