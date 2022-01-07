
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int entry; } ;
struct timer_base {int pending_map; scalar_t__ vectors; } ;


 int __clear_bit (unsigned int,int ) ;
 int detach_timer (struct timer_list*,int) ;
 scalar_t__ hlist_is_singular_node (int *,scalar_t__) ;
 unsigned int timer_get_idx (struct timer_list*) ;
 int timer_pending (struct timer_list*) ;

__attribute__((used)) static int detach_if_pending(struct timer_list *timer, struct timer_base *base,
        bool clear_pending)
{
 unsigned idx = timer_get_idx(timer);

 if (!timer_pending(timer))
  return 0;

 if (hlist_is_singular_node(&timer->entry, base->vectors + idx))
  __clear_bit(idx, base->pending_map);

 detach_timer(timer, clear_pending);
 return 1;
}
