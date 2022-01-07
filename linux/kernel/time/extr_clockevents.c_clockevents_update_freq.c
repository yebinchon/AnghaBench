
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {int dummy; } ;


 int ENODEV ;
 int __clockevents_update_freq (struct clock_event_device*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int tick_broadcast_update_freq (struct clock_event_device*,int ) ;

int clockevents_update_freq(struct clock_event_device *dev, u32 freq)
{
 unsigned long flags;
 int ret;

 local_irq_save(flags);
 ret = tick_broadcast_update_freq(dev, freq);
 if (ret == -ENODEV)
  ret = __clockevents_update_freq(dev, freq);
 local_irq_restore(flags);
 return ret;
}
