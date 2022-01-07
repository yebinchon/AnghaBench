
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;
struct TYPE_2__ {int state; int active; } ;


 int CONTEXT_KERNEL ;
 int CONTEXT_USER ;
 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int ) ;
 TYPE_1__ context_tracking ;
 int context_tracking_recursion_enter () ;
 int context_tracking_recursion_exit () ;
 int current ;
 int rcu_user_exit () ;
 int trace_user_exit (int ) ;
 int vtime_user_exit (int ) ;

void __context_tracking_exit(enum ctx_state state)
{
 if (!context_tracking_recursion_enter())
  return;

 if (__this_cpu_read(context_tracking.state) == state) {
  if (__this_cpu_read(context_tracking.active)) {




   rcu_user_exit();
   if (state == CONTEXT_USER) {
    vtime_user_exit(current);
    trace_user_exit(0);
   }
  }
  __this_cpu_write(context_tracking.state, CONTEXT_KERNEL);
 }
 context_tracking_recursion_exit();
}
