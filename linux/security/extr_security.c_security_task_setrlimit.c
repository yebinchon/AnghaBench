
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rlimit {int dummy; } ;


 int call_int_hook (int ,int ,struct task_struct*,unsigned int,struct rlimit*) ;
 int task_setrlimit ;

int security_task_setrlimit(struct task_struct *p, unsigned int resource,
  struct rlimit *new_rlim)
{
 return call_int_hook(task_setrlimit, 0, p, resource, new_rlim);
}
