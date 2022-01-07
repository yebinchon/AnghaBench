
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_common {int dummy; } ;
struct uts_namespace {struct ns_common ns; } ;
struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {struct uts_namespace* uts_ns; } ;


 int get_uts_ns (struct uts_namespace*) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static struct ns_common *utsns_get(struct task_struct *task)
{
 struct uts_namespace *ns = ((void*)0);
 struct nsproxy *nsproxy;

 task_lock(task);
 nsproxy = task->nsproxy;
 if (nsproxy) {
  ns = nsproxy->uts_ns;
  get_uts_ns(ns);
 }
 task_unlock(task);

 return ns ? &ns->ns : ((void*)0);
}
