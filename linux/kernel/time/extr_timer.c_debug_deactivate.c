
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int debug_timer_deactivate (struct timer_list*) ;
 int trace_timer_cancel (struct timer_list*) ;

__attribute__((used)) static inline void debug_deactivate(struct timer_list *timer)
{
 debug_timer_deactivate(timer);
 trace_timer_cancel(timer);
}
