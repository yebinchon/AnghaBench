
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alarm_base {int lock; } ;
struct TYPE_2__ {int expires; } ;
struct alarm {size_t type; int timer; TYPE_1__ node; } ;


 struct alarm_base* alarm_bases ;
 int alarmtimer_enqueue (struct alarm_base*,struct alarm*) ;
 int hrtimer_restart (int *) ;
 int hrtimer_set_expires (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void alarm_restart(struct alarm *alarm)
{
 struct alarm_base *base = &alarm_bases[alarm->type];
 unsigned long flags;

 spin_lock_irqsave(&base->lock, flags);
 hrtimer_set_expires(&alarm->timer, alarm->node.expires);
 hrtimer_restart(&alarm->timer);
 alarmtimer_enqueue(base, alarm);
 spin_unlock_irqrestore(&base->lock, flags);
}
