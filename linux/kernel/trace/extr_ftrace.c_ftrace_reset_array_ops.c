
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {TYPE_1__* ops; } ;
struct TYPE_2__ {int func; } ;


 int ftrace_stub ;

void ftrace_reset_array_ops(struct trace_array *tr)
{
 tr->ops->func = ftrace_stub;
}
