
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hrtimer_sleeper {int timer; } ;
typedef int ktime_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int FLAGS_CLOCKRT ;
 int HRTIMER_MODE_ABS ;
 int hrtimer_init_sleeper_on_stack (struct hrtimer_sleeper*,int ,int ) ;
 int hrtimer_set_expires_range_ns (int *,int ,int ) ;

__attribute__((used)) static inline struct hrtimer_sleeper *
futex_setup_timer(ktime_t *time, struct hrtimer_sleeper *timeout,
    int flags, u64 range_ns)
{
 if (!time)
  return ((void*)0);

 hrtimer_init_sleeper_on_stack(timeout, (flags & FLAGS_CLOCKRT) ?
          CLOCK_REALTIME : CLOCK_MONOTONIC,
          HRTIMER_MODE_ABS);




 hrtimer_set_expires_range_ns(&timeout->timer, *time, range_ns);

 return timeout;
}
