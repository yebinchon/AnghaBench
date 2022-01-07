
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu; } ;
struct trace_array {int flags; TYPE_1__ trace_buffer; int ops; } ;
typedef int ftrace_func_t ;
struct TYPE_4__ {int val; } ;


 int ENOMEM ;
 int TRACE_ARRAY_FL_GLOBAL ;
 int TRACE_FUNC_OPT_STACK ;
 int ftrace_init_array_ops (struct trace_array*,int ) ;
 TYPE_2__ func_flags ;
 int function_stack_trace_call ;
 int function_trace_call ;
 int get_cpu () ;
 int put_cpu () ;
 int tracing_start_cmdline_record () ;
 int tracing_start_function_trace (struct trace_array*) ;

__attribute__((used)) static int function_trace_init(struct trace_array *tr)
{
 ftrace_func_t func;






 if (!tr->ops)
  return -ENOMEM;


 if (tr->flags & TRACE_ARRAY_FL_GLOBAL &&
     func_flags.val & TRACE_FUNC_OPT_STACK)
  func = function_stack_trace_call;
 else
  func = function_trace_call;

 ftrace_init_array_ops(tr, func);

 tr->trace_buffer.cpu = get_cpu();
 put_cpu();

 tracing_start_cmdline_record();
 tracing_start_function_trace(tr);
 return 0;
}
