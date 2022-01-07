
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_base {unsigned long clk; unsigned long next_expiry; scalar_t__ is_idle; scalar_t__ must_forward_clk; } ;


 unsigned long READ_ONCE (int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static inline void forward_timer_base(struct timer_base *base)
{
}
