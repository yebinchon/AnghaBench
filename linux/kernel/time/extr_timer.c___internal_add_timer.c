
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int expires; } ;
struct timer_base {int clk; } ;


 unsigned int calc_wheel_index (int ,int ) ;
 int enqueue_timer (struct timer_base*,struct timer_list*,unsigned int) ;

__attribute__((used)) static void
__internal_add_timer(struct timer_base *base, struct timer_list *timer)
{
 unsigned int idx;

 idx = calc_wheel_index(timer->expires, base->clk);
 enqueue_timer(base, timer, idx);
}
