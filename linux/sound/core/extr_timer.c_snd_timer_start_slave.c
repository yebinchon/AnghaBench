
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_timer_instance {int flags; TYPE_2__* timer; TYPE_1__* master; int active_list; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int slave_active_head; } ;


 int EBUSY ;
 int EINVAL ;
 int SNDRV_TIMER_EVENT_CONTINUE ;
 int SNDRV_TIMER_EVENT_START ;
 int SNDRV_TIMER_IFLG_DEAD ;
 int SNDRV_TIMER_IFLG_RUNNING ;
 int list_add_tail (int *,int *) ;
 int slave_active_lock ;
 int snd_timer_notify1 (struct snd_timer_instance*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_timer_start_slave(struct snd_timer_instance *timeri,
     bool start)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&slave_active_lock, flags);
 if (timeri->flags & SNDRV_TIMER_IFLG_DEAD) {
  err = -EINVAL;
  goto unlock;
 }
 if (timeri->flags & SNDRV_TIMER_IFLG_RUNNING) {
  err = -EBUSY;
  goto unlock;
 }
 timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
 if (timeri->master && timeri->timer) {
  spin_lock(&timeri->timer->lock);
  list_add_tail(&timeri->active_list,
         &timeri->master->slave_active_head);
  snd_timer_notify1(timeri, start ? SNDRV_TIMER_EVENT_START :
      SNDRV_TIMER_EVENT_CONTINUE);
  spin_unlock(&timeri->timer->lock);
 }
 err = 1;
 unlock:
 spin_unlock_irqrestore(&slave_active_lock, flags);
 return err;
}
