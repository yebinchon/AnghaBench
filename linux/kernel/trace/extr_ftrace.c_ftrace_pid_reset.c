
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int clear_ftrace_pids (struct trace_array*) ;
 int ftrace_lock ;
 int ftrace_startup_all (int ) ;
 int ftrace_update_pid_func () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ftrace_pid_reset(struct trace_array *tr)
{
 mutex_lock(&ftrace_lock);
 clear_ftrace_pids(tr);

 ftrace_update_pid_func();
 ftrace_startup_all(0);

 mutex_unlock(&ftrace_lock);
}
