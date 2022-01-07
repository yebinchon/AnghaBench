
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lock_class_key {int dummy; } ;


 int debug_init (struct timer_list*) ;
 int do_init_timer (struct timer_list*,void (*) (struct timer_list*),unsigned int,char const*,struct lock_class_key*) ;

void init_timer_key(struct timer_list *timer,
      void (*func)(struct timer_list *), unsigned int flags,
      const char *name, struct lock_class_key *key)
{
 debug_init(timer);
 do_init_timer(timer, func, flags, name, key);
}
