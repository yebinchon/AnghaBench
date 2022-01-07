
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; int (* set_next_ktime ) (scalar_t__,struct clock_event_device*) ;unsigned long long mult; unsigned long long shift; int (* set_next_event ) (unsigned long,struct clock_event_device*) ;scalar_t__ min_delta_ns; scalar_t__ max_delta_ns; scalar_t__ next_event; } ;
typedef scalar_t__ ktime_t ;
typedef scalar_t__ int64_t ;


 int CLOCK_EVT_FEAT_KTIME ;
 int ETIME ;
 int WARN_ONCE (int,char*,int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int clockevent_get_state (struct clock_event_device*) ;
 int clockevent_state_oneshot (struct clock_event_device*) ;
 scalar_t__ clockevent_state_shutdown (struct clock_event_device*) ;
 int clockevents_program_min_delta (struct clock_event_device*) ;
 int ktime_get () ;
 int ktime_sub (scalar_t__,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,struct clock_event_device*) ;
 int stub2 (unsigned long,struct clock_event_device*) ;

int clockevents_program_event(struct clock_event_device *dev, ktime_t expires,
         bool force)
{
 unsigned long long clc;
 int64_t delta;
 int rc;

 if (WARN_ON_ONCE(expires < 0))
  return -ETIME;

 dev->next_event = expires;

 if (clockevent_state_shutdown(dev))
  return 0;


 WARN_ONCE(!clockevent_state_oneshot(dev), "Current state: %d\n",
    clockevent_get_state(dev));


 if (dev->features & CLOCK_EVT_FEAT_KTIME)
  return dev->set_next_ktime(expires, dev);

 delta = ktime_to_ns(ktime_sub(expires, ktime_get()));
 if (delta <= 0)
  return force ? clockevents_program_min_delta(dev) : -ETIME;

 delta = min(delta, (int64_t) dev->max_delta_ns);
 delta = max(delta, (int64_t) dev->min_delta_ns);

 clc = ((unsigned long long) delta * dev->mult) >> dev->shift;
 rc = dev->set_next_event((unsigned long) clc, dev);

 return (rc && force) ? clockevents_program_min_delta(dev) : rc;
}
