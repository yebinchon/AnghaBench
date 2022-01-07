
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_instance {int flags; TYPE_1__* timer; int active_list; int ack_list; } ;
struct TYPE_2__ {int lock; } ;


 int EBUSY ;
 int SNDRV_TIMER_EVENT_PAUSE ;
 int SNDRV_TIMER_EVENT_STOP ;
 int SNDRV_TIMER_IFLG_RUNNING ;
 int list_del_init (int *) ;
 int slave_active_lock ;
 int snd_timer_notify1 (struct snd_timer_instance*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_timer_stop_slave(struct snd_timer_instance *timeri, bool stop)
{
 unsigned long flags;

 spin_lock_irqsave(&slave_active_lock, flags);
 if (!(timeri->flags & SNDRV_TIMER_IFLG_RUNNING)) {
  spin_unlock_irqrestore(&slave_active_lock, flags);
  return -EBUSY;
 }
 timeri->flags &= ~SNDRV_TIMER_IFLG_RUNNING;
 if (timeri->timer) {
  spin_lock(&timeri->timer->lock);
  list_del_init(&timeri->ack_list);
  list_del_init(&timeri->active_list);
  snd_timer_notify1(timeri, stop ? SNDRV_TIMER_EVENT_STOP :
      SNDRV_TIMER_EVENT_PAUSE);
  spin_unlock(&timeri->timer->lock);
 }
 spin_unlock_irqrestore(&slave_active_lock, flags);
 return 0;
}
