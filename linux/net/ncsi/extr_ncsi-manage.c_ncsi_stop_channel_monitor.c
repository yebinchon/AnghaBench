
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int timer; } ;
struct ncsi_channel {TYPE_1__ monitor; int lock; } ;


 int del_timer_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ncsi_stop_channel_monitor(struct ncsi_channel *nc)
{
 unsigned long flags;

 spin_lock_irqsave(&nc->lock, flags);
 if (!nc->monitor.enabled) {
  spin_unlock_irqrestore(&nc->lock, flags);
  return;
 }
 nc->monitor.enabled = 0;
 spin_unlock_irqrestore(&nc->lock, flags);

 del_timer_sync(&nc->monitor.timer);
}
