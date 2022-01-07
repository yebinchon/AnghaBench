
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct trace_array {TYPE_1__* ops; int * current_trace; } ;
struct TYPE_5__ {int const val; } ;
struct TYPE_4__ {int func; } ;


 int EINVAL ;

 TYPE_3__ func_flags ;
 int function_stack_trace_call ;
 int function_trace ;
 int function_trace_call ;
 int register_ftrace_function (TYPE_1__*) ;
 int unregister_ftrace_function (TYPE_1__*) ;

__attribute__((used)) static int
func_set_flag(struct trace_array *tr, u32 old_flags, u32 bit, int set)
{
 switch (bit) {
 case 128:

  if (!!set == !!(func_flags.val & 128))
   break;


  if (tr->current_trace != &function_trace)
   break;

  unregister_ftrace_function(tr->ops);

  if (set) {
   tr->ops->func = function_stack_trace_call;
   register_ftrace_function(tr->ops);
  } else {
   tr->ops->func = function_trace_call;
   register_ftrace_function(tr->ops);
  }

  break;
 default:
  return -EINVAL;
 }

 return 0;
}
