
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int trace_poll (struct trace_iterator*,struct file*,int *) ;

__attribute__((used)) static __poll_t
tracing_poll_pipe(struct file *filp, poll_table *poll_table)
{
 struct trace_iterator *iter = filp->private_data;

 return trace_poll(iter, filp, poll_table);
}
