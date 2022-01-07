
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {unsigned long pid_max; int pids; } ;
typedef scalar_t__ loff_t ;


 unsigned long find_first_bit (int ,unsigned long) ;
 scalar_t__ trace_pid_next (struct trace_pid_list*,void*,scalar_t__*) ;

void *trace_pid_start(struct trace_pid_list *pid_list, loff_t *pos)
{
 unsigned long pid;
 loff_t l = 0;

 pid = find_first_bit(pid_list->pids, pid_list->pid_max);
 if (pid >= pid_list->pid_max)
  return ((void*)0);


 for (pid++; pid && l < *pos;
      pid = (unsigned long)trace_pid_next(pid_list, (void *)pid, &l))
  ;
 return (void *)pid;
}
