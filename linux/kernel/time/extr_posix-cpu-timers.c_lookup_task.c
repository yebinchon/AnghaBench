
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct task_struct* group_leader; } ;
typedef int pid_t ;


 struct task_struct* current ;
 struct task_struct* find_task_by_vpid (int const) ;
 scalar_t__ has_group_leader_pid (struct task_struct*) ;
 scalar_t__ same_thread_group (struct task_struct*,struct task_struct*) ;
 scalar_t__ thread_group_leader (struct task_struct*) ;

__attribute__((used)) static struct task_struct *lookup_task(const pid_t pid, bool thread,
           bool gettime)
{
 struct task_struct *p;





 if (!pid)
  return thread ? current : current->group_leader;

 p = find_task_by_vpid(pid);
 if (!p)
  return p;

 if (thread)
  return same_thread_group(p, current) ? p : ((void*)0);

 if (gettime) {
  return (p == current || thread_group_leader(p)) ? p : ((void*)0);
 }




 return has_group_leader_pid(p) ? p : ((void*)0);
}
