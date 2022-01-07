
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pprev; } ;
struct timer_list {void (* function ) (struct timer_list*) ;unsigned int flags; int lockdep_map; TYPE_1__ entry; } ;
struct lock_class_key {int dummy; } ;


 int lockdep_init_map (int *,char const*,struct lock_class_key*,int ) ;
 unsigned int raw_smp_processor_id () ;

__attribute__((used)) static void do_init_timer(struct timer_list *timer,
     void (*func)(struct timer_list *),
     unsigned int flags,
     const char *name, struct lock_class_key *key)
{
 timer->entry.pprev = ((void*)0);
 timer->function = func;
 timer->flags = flags | raw_smp_processor_id();
 lockdep_init_map(&timer->lockdep_map, name, key, 0);
}
