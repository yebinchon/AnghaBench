
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int TASK_INTERRUPTIBLE ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int trace_foo_bar_with_fn (char*,int) ;
 int trace_foo_with_template_fn (char*,int) ;

__attribute__((used)) static void simple_thread_func_fn(int cnt)
{
 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ);


 trace_foo_bar_with_fn("Look at me", cnt);
 trace_foo_with_template_fn("Look at me too", cnt);
}
