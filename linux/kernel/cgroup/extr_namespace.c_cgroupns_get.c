
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {struct cgroup_namespace* cgroup_ns; } ;
struct ns_common {int dummy; } ;
struct cgroup_namespace {struct ns_common ns; } ;


 int get_cgroup_ns (struct cgroup_namespace*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static struct ns_common *cgroupns_get(struct task_struct *task)
{
 struct cgroup_namespace *ns = ((void*)0);
 struct nsproxy *nsproxy;

 task_lock(task);
 nsproxy = task->nsproxy;
 if (nsproxy) {
  ns = nsproxy->cgroup_ns;
  get_cgroup_ns(ns);
 }
 task_unlock(task);

 return ns ? &ns->ns : ((void*)0);
}
