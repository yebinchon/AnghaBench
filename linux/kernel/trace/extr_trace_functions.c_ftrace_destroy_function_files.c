
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int * ops; } ;


 int ftrace_destroy_filter_files (int *) ;
 int kfree (int *) ;

void ftrace_destroy_function_files(struct trace_array *tr)
{
 ftrace_destroy_filter_files(tr->ops);
 kfree(tr->ops);
 tr->ops = ((void*)0);
}
