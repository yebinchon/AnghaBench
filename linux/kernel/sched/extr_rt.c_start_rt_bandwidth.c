
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_bandwidth {scalar_t__ rt_runtime; int rt_period_active; int rt_runtime_lock; int rt_period_timer; } ;


 int HRTIMER_MODE_ABS_PINNED_HARD ;
 scalar_t__ RUNTIME_INF ;
 int hrtimer_forward_now (int *,int ) ;
 int hrtimer_start_expires (int *,int ) ;
 int ns_to_ktime (int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int rt_bandwidth_enabled () ;

__attribute__((used)) static void start_rt_bandwidth(struct rt_bandwidth *rt_b)
{
 if (!rt_bandwidth_enabled() || rt_b->rt_runtime == RUNTIME_INF)
  return;

 raw_spin_lock(&rt_b->rt_runtime_lock);
 if (!rt_b->rt_period_active) {
  rt_b->rt_period_active = 1;
  hrtimer_forward_now(&rt_b->rt_period_timer, ns_to_ktime(0));
  hrtimer_start_expires(&rt_b->rt_period_timer,
          HRTIMER_MODE_ABS_PINNED_HARD);
 }
 raw_spin_unlock(&rt_b->rt_runtime_lock);
}
