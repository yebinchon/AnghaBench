
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pid_namespace {int dummy; } ;


 struct pid_namespace* ns_of_pid (int ) ;
 int task_pid (struct task_struct*) ;

struct pid_namespace *task_active_pid_ns(struct task_struct *tsk)
{
 return ns_of_pid(task_pid(tsk));
}
