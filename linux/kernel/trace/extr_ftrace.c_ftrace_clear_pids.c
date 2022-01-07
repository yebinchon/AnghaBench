
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int clear_ftrace_pids (struct trace_array*) ;
 int ftrace_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ftrace_clear_pids(struct trace_array *tr)
{
 mutex_lock(&ftrace_lock);

 clear_ftrace_pids(tr);

 mutex_unlock(&ftrace_lock);
}
