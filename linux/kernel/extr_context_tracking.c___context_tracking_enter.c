
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;
struct TYPE_5__ {int state; int active; } ;
struct TYPE_4__ {int mm; } ;


 int CONTEXT_USER ;
 int WARN_ON_ONCE (int) ;
 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int) ;
 TYPE_3__ context_tracking ;
 int context_tracking_recursion_enter () ;
 int context_tracking_recursion_exit () ;
 TYPE_1__* current ;
 int rcu_user_enter () ;
 int trace_user_enter (int ) ;
 int vtime_user_enter (TYPE_1__*) ;

void __context_tracking_enter(enum ctx_state state)
{

 WARN_ON_ONCE(!current->mm);

 if (!context_tracking_recursion_enter())
  return;

 if ( __this_cpu_read(context_tracking.state) != state) {
  if (__this_cpu_read(context_tracking.active)) {







   if (state == CONTEXT_USER) {
    trace_user_enter(0);
    vtime_user_enter(current);
   }
   rcu_user_enter();
  }
  __this_cpu_write(context_tracking.state, state);
 }
 context_tracking_recursion_exit();
}
