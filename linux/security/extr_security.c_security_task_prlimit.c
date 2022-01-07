
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct cred const*,struct cred const*,unsigned int) ;
 int task_prlimit ;

int security_task_prlimit(const struct cred *cred, const struct cred *tcred,
     unsigned int flags)
{
 return call_int_hook(task_prlimit, 0, cred, tcred, flags);
}
