
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;
struct ftrace_buffer_info {struct trace_iterator iter; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int trace_poll (struct trace_iterator*,struct file*,int *) ;

__attribute__((used)) static __poll_t
tracing_buffers_poll(struct file *filp, poll_table *poll_table)
{
 struct ftrace_buffer_info *info = filp->private_data;
 struct trace_iterator *iter = &info->iter;

 return trace_poll(iter, filp, poll_table);
}
