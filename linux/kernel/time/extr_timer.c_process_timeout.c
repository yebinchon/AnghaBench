
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct process_timer {int task; } ;


 struct process_timer* from_timer (int ,struct timer_list*,int ) ;
 struct process_timer* timeout ;
 int timer ;
 int wake_up_process (int ) ;

__attribute__((used)) static void process_timeout(struct timer_list *t)
{
 struct process_timer *timeout = from_timer(timeout, t, timer);

 wake_up_process(timeout->task);
}
