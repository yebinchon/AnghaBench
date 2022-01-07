
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef scalar_t__ pid_t ;


 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (scalar_t__) ;

__attribute__((used)) static struct task_struct *find_process_by_pid(pid_t pid)
{
 return pid ? find_task_by_vpid(pid) : current;
}
