
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int ipc_ns; } ;
struct ns_common {int dummy; } ;
struct ipc_namespace {struct ns_common ns; } ;


 struct ipc_namespace* get_ipc_ns (int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static struct ns_common *ipcns_get(struct task_struct *task)
{
 struct ipc_namespace *ns = ((void*)0);
 struct nsproxy *nsproxy;

 task_lock(task);
 nsproxy = task->nsproxy;
 if (nsproxy)
  ns = get_ipc_ns(nsproxy->ipc_ns);
 task_unlock(task);

 return ns ? &ns->ns : ((void*)0);
}
