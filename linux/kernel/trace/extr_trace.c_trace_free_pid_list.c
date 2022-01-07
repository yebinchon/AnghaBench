
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_pid_list {int pids; } ;


 int kfree (struct trace_pid_list*) ;
 int vfree (int ) ;

void trace_free_pid_list(struct trace_pid_list *pid_list)
{
 vfree(pid_list->pids);
 kfree(pid_list);
}
