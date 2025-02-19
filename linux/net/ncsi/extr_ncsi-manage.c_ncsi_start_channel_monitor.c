
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int timer; int state; } ;
struct ncsi_channel {TYPE_1__ monitor; int lock; } ;


 scalar_t__ HZ ;
 int NCSI_CHANNEL_MONITOR_START ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ncsi_start_channel_monitor(struct ncsi_channel *nc)
{
 unsigned long flags;

 spin_lock_irqsave(&nc->lock, flags);
 WARN_ON_ONCE(nc->monitor.enabled);
 nc->monitor.enabled = 1;
 nc->monitor.state = NCSI_CHANNEL_MONITOR_START;
 spin_unlock_irqrestore(&nc->lock, flags);

 mod_timer(&nc->monitor.timer, jiffies + HZ);
}
