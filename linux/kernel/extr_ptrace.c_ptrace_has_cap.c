
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;


 int CAP_SYS_PTRACE ;
 unsigned int PTRACE_MODE_NOAUDIT ;
 int current ;
 int has_ns_capability (int ,struct user_namespace*,int ) ;
 int has_ns_capability_noaudit (int ,struct user_namespace*,int ) ;

__attribute__((used)) static int ptrace_has_cap(struct user_namespace *ns, unsigned int mode)
{
 if (mode & PTRACE_MODE_NOAUDIT)
  return has_ns_capability_noaudit(current, ns, CAP_SYS_PTRACE);
 else
  return has_ns_capability(current, ns, CAP_SYS_PTRACE);
}
