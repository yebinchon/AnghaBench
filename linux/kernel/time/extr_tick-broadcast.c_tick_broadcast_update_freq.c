
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;


 int ENODEV ;
 int __clockevents_update_freq (struct clock_event_device*,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int tick_broadcast_lock ;
 scalar_t__ tick_is_broadcast_device (struct clock_event_device*) ;

int tick_broadcast_update_freq(struct clock_event_device *dev, u32 freq)
{
 int ret = -ENODEV;

 if (tick_is_broadcast_device(dev)) {
  raw_spin_lock(&tick_broadcast_lock);
  ret = __clockevents_update_freq(dev, freq);
  raw_spin_unlock(&tick_broadcast_lock);
 }
 return ret;
}
