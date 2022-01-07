
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {scalar_t__ level; struct pid_namespace* parent; int user_ns; } ;
struct nsproxy {int pid_ns_for_children; } ;
struct ns_common {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int current ;
 int current_user_ns () ;
 int get_pid_ns (struct pid_namespace*) ;
 int ns_capable (int ,int ) ;
 int put_pid_ns (int ) ;
 struct pid_namespace* task_active_pid_ns (int ) ;
 struct pid_namespace* to_pid_ns (struct ns_common*) ;

__attribute__((used)) static int pidns_install(struct nsproxy *nsproxy, struct ns_common *ns)
{
 struct pid_namespace *active = task_active_pid_ns(current);
 struct pid_namespace *ancestor, *new = to_pid_ns(ns);

 if (!ns_capable(new->user_ns, CAP_SYS_ADMIN) ||
     !ns_capable(current_user_ns(), CAP_SYS_ADMIN))
  return -EPERM;
 if (new->level < active->level)
  return -EINVAL;

 ancestor = new;
 while (ancestor->level > active->level)
  ancestor = ancestor->parent;
 if (ancestor != active)
  return -EINVAL;

 put_pid_ns(nsproxy->pid_ns_for_children);
 nsproxy->pid_ns_for_children = get_pid_ns(new);
 return 0;
}
