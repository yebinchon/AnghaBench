
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;


 int call_int_hook (int ,int ,struct cred*,struct cred const*,int) ;
 int task_fix_setuid ;

int security_task_fix_setuid(struct cred *new, const struct cred *old,
        int flags)
{
 return call_int_hook(task_fix_setuid, 0, new, old, flags);
}
