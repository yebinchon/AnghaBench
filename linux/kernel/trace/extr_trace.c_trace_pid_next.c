
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {unsigned long pid_max; int pids; } ;
typedef int loff_t ;


 unsigned long find_next_bit (int ,unsigned long,unsigned long) ;

void *trace_pid_next(struct trace_pid_list *pid_list, void *v, loff_t *pos)
{
 unsigned long pid = (unsigned long)v;

 (*pos)++;


 pid = find_next_bit(pid_list->pids, pid_list->pid_max, pid);


 if (pid < pid_list->pid_max)
  return (void *)(pid + 1);

 return ((void*)0);
}
