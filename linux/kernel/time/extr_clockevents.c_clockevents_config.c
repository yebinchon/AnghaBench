
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clock_event_device {int features; int max_delta_ticks; scalar_t__ min_delta_ticks; void* max_delta_ns; void* min_delta_ns; } ;


 int CLOCK_EVT_FEAT_ONESHOT ;
 scalar_t__ UINT_MAX ;
 void* cev_delta2ns (scalar_t__,struct clock_event_device*,int) ;
 int clockevents_calc_mult_shift (struct clock_event_device*,int ,int) ;
 int do_div (int,int ) ;

__attribute__((used)) static void clockevents_config(struct clock_event_device *dev, u32 freq)
{
 u64 sec;

 if (!(dev->features & CLOCK_EVT_FEAT_ONESHOT))
  return;






 sec = dev->max_delta_ticks;
 do_div(sec, freq);
 if (!sec)
  sec = 1;
 else if (sec > 600 && dev->max_delta_ticks > UINT_MAX)
  sec = 600;

 clockevents_calc_mult_shift(dev, freq, sec);
 dev->min_delta_ns = cev_delta2ns(dev->min_delta_ticks, dev, 0);
 dev->max_delta_ns = cev_delta2ns(dev->max_delta_ticks, dev, 1);
}
