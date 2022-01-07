
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hrtimer {int state; } ;
typedef int s64 ;
typedef scalar_t__ ktime_t ;


 int HRTIMER_STATE_ENQUEUED ;
 scalar_t__ WARN_ON (int) ;
 int hrtimer_add_expires (struct hrtimer*,scalar_t__) ;
 int hrtimer_add_expires_ns (struct hrtimer*,int) ;
 int hrtimer_get_expires (struct hrtimer*) ;
 scalar_t__ hrtimer_get_expires_tv64 (struct hrtimer*) ;
 scalar_t__ hrtimer_resolution ;
 int ktime_divns (scalar_t__,int) ;
 scalar_t__ ktime_sub (scalar_t__,int ) ;
 int ktime_to_ns (scalar_t__) ;
 scalar_t__ unlikely (int) ;

u64 hrtimer_forward(struct hrtimer *timer, ktime_t now, ktime_t interval)
{
 u64 orun = 1;
 ktime_t delta;

 delta = ktime_sub(now, hrtimer_get_expires(timer));

 if (delta < 0)
  return 0;

 if (WARN_ON(timer->state & HRTIMER_STATE_ENQUEUED))
  return 0;

 if (interval < hrtimer_resolution)
  interval = hrtimer_resolution;

 if (unlikely(delta >= interval)) {
  s64 incr = ktime_to_ns(interval);

  orun = ktime_divns(delta, incr);
  hrtimer_add_expires_ns(timer, incr * orun);
  if (hrtimer_get_expires_tv64(timer) > now)
   return orun;




  orun++;
 }
 hrtimer_add_expires(timer, interval);

 return orun;
}
