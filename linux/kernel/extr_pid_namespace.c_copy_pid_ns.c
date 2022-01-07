
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct pid_namespace {int dummy; } ;


 unsigned long CLONE_NEWPID ;
 int EINVAL ;
 struct pid_namespace* ERR_PTR (int ) ;
 struct pid_namespace* create_pid_namespace (struct user_namespace*,struct pid_namespace*) ;
 int current ;
 struct pid_namespace* get_pid_ns (struct pid_namespace*) ;
 struct pid_namespace* task_active_pid_ns (int ) ;

struct pid_namespace *copy_pid_ns(unsigned long flags,
 struct user_namespace *user_ns, struct pid_namespace *old_ns)
{
 if (!(flags & CLONE_NEWPID))
  return get_pid_ns(old_ns);
 if (task_active_pid_ns(current) != old_ns)
  return ERR_PTR(-EINVAL);
 return create_pid_namespace(user_ns, old_ns);
}
