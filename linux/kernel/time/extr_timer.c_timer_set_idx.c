
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {unsigned int flags; } ;


 unsigned int TIMER_ARRAYMASK ;
 unsigned int TIMER_ARRAYSHIFT ;

__attribute__((used)) static inline void timer_set_idx(struct timer_list *timer, unsigned int idx)
{
 timer->flags = (timer->flags & ~TIMER_ARRAYMASK) |
   idx << TIMER_ARRAYSHIFT;
}
