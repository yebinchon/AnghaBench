
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_base {int dummy; } ;


 unsigned int TIMER_PINNED ;
 int get_nohz_timer_target () ;
 struct timer_base* get_timer_cpu_base (unsigned int,int ) ;
 struct timer_base* get_timer_this_cpu_base (unsigned int) ;
 scalar_t__ static_branch_likely (int *) ;
 int timers_migration_enabled ;

__attribute__((used)) static inline struct timer_base *
get_target_base(struct timer_base *base, unsigned tflags)
{





 return get_timer_this_cpu_base(tflags);
}
