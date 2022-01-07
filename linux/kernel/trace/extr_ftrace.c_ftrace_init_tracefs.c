
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;


 int ftrace_pid_fops ;
 int trace_create_file (char*,int,struct dentry*,struct trace_array*,int *) ;

void ftrace_init_tracefs(struct trace_array *tr, struct dentry *d_tracer)
{
 trace_create_file("set_ftrace_pid", 0644, d_tracer,
       tr, &ftrace_pid_fops);
}
