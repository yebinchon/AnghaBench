
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int function; } ;
struct rt_bandwidth {TYPE_1__ rt_period_timer; int rt_runtime_lock; int rt_runtime; int rt_period; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL_HARD ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int ns_to_ktime (int ) ;
 int raw_spin_lock_init (int *) ;
 int sched_rt_period_timer ;

void init_rt_bandwidth(struct rt_bandwidth *rt_b, u64 period, u64 runtime)
{
 rt_b->rt_period = ns_to_ktime(period);
 rt_b->rt_runtime = runtime;

 raw_spin_lock_init(&rt_b->rt_runtime_lock);

 hrtimer_init(&rt_b->rt_period_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL_HARD);
 rt_b->rt_period_timer.function = sched_rt_period_timer;
}
