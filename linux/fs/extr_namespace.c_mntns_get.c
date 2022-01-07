
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {TYPE_1__* mnt_ns; } ;
struct ns_common {int dummy; } ;
struct TYPE_2__ {struct ns_common ns; } ;


 int get_mnt_ns (int ) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 int to_mnt_ns (struct ns_common*) ;

__attribute__((used)) static struct ns_common *mntns_get(struct task_struct *task)
{
 struct ns_common *ns = ((void*)0);
 struct nsproxy *nsproxy;

 task_lock(task);
 nsproxy = task->nsproxy;
 if (nsproxy) {
  ns = &nsproxy->mnt_ns->ns;
  get_mnt_ns(to_mnt_ns(ns));
 }
 task_unlock(task);

 return ns;
}
