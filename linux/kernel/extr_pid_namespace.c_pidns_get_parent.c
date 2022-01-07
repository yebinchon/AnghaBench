
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pid_namespace {struct pid_namespace* parent; } ;
struct ns_common {int dummy; } ;
struct TYPE_4__ {struct ns_common ns; } ;
struct TYPE_3__ {struct pid_namespace* parent; } ;


 int EPERM ;
 struct ns_common* ERR_PTR (int ) ;
 int current ;
 TYPE_2__* get_pid_ns (struct pid_namespace*) ;
 struct pid_namespace* task_active_pid_ns (int ) ;
 TYPE_1__* to_pid_ns (struct ns_common*) ;

__attribute__((used)) static struct ns_common *pidns_get_parent(struct ns_common *ns)
{
 struct pid_namespace *active = task_active_pid_ns(current);
 struct pid_namespace *pid_ns, *p;


 pid_ns = p = to_pid_ns(ns)->parent;
 for (;;) {
  if (!p)
   return ERR_PTR(-EPERM);
  if (p == active)
   break;
  p = p->parent;
 }

 return &get_pid_ns(pid_ns)->ns;
}
