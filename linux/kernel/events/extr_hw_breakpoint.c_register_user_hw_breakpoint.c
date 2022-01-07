
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_attr {int dummy; } ;
struct perf_event {int dummy; } ;
typedef int perf_overflow_handler_t ;


 struct perf_event* perf_event_create_kernel_counter (struct perf_event_attr*,int,struct task_struct*,int ,void*) ;

struct perf_event *
register_user_hw_breakpoint(struct perf_event_attr *attr,
       perf_overflow_handler_t triggered,
       void *context,
       struct task_struct *tsk)
{
 return perf_event_create_kernel_counter(attr, -1, tsk, triggered,
      context);
}
