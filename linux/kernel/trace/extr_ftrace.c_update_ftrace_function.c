
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ftrace_func_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int ftrace_list_end ;
 int ftrace_lock ;
 scalar_t__ ftrace_ops_get_list_func (TYPE_1__*) ;
 TYPE_1__* ftrace_ops_list ;
 scalar_t__ ftrace_ops_list_func ;
 scalar_t__ ftrace_stub ;
 int ftrace_sync ;
 int ftrace_sync_ipi ;
 scalar_t__ ftrace_trace_function ;
 int * function_trace_op ;
 int lockdep_is_held (int *) ;
 int * rcu_dereference_protected (TYPE_1__*,int ) ;
 int schedule_on_each_cpu (int ) ;
 int * set_function_trace_op ;
 int smp_call_function (int ,int *,int) ;
 int smp_wmb () ;
 int update_function_graph_func () ;

__attribute__((used)) static void update_ftrace_function(void)
{
 ftrace_func_t func;






 set_function_trace_op = rcu_dereference_protected(ftrace_ops_list,
      lockdep_is_held(&ftrace_lock));


 if (set_function_trace_op == &ftrace_list_end) {
  func = ftrace_stub;






 } else if (rcu_dereference_protected(ftrace_ops_list->next,
   lockdep_is_held(&ftrace_lock)) == &ftrace_list_end) {
  func = ftrace_ops_get_list_func(ftrace_ops_list);

 } else {

  set_function_trace_op = &ftrace_list_end;
  func = ftrace_ops_list_func;
 }

 update_function_graph_func();


 if (ftrace_trace_function == func)
  return;





 if (func == ftrace_ops_list_func) {
  ftrace_trace_function = func;




  return;
 }
 ftrace_trace_function = ftrace_ops_list_func;




 schedule_on_each_cpu(ftrace_sync);

 function_trace_op = set_function_trace_op;

 smp_wmb();

 smp_call_function(ftrace_sync_ipi, ((void*)0), 1);



 ftrace_trace_function = func;
}
