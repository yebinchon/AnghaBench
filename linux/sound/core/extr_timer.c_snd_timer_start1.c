
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_timer_instance {int flags; unsigned long ticks; unsigned long cticks; int active_list; scalar_t__ pticks; struct snd_timer* timer; } ;
struct TYPE_4__ {int flags; int (* start ) (struct snd_timer*) ;} ;
struct snd_timer {unsigned long sticks; int lock; scalar_t__ running; TYPE_2__ hw; int flags; int active_list_head; TYPE_1__* card; } ;
struct TYPE_3__ {scalar_t__ shutdown; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int SNDRV_TIMER_EVENT_CONTINUE ;
 int SNDRV_TIMER_EVENT_START ;
 int SNDRV_TIMER_FLG_RESCHED ;
 int SNDRV_TIMER_HW_SLAVE ;
 int SNDRV_TIMER_IFLG_DEAD ;
 int SNDRV_TIMER_IFLG_RUNNING ;
 int SNDRV_TIMER_IFLG_START ;
 int list_move_tail (int *,int *) ;
 int snd_timer_notify1 (struct snd_timer_instance*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_timer*) ;

__attribute__((used)) static int snd_timer_start1(struct snd_timer_instance *timeri,
       bool start, unsigned long ticks)
{
 struct snd_timer *timer;
 int result;
 unsigned long flags;

 timer = timeri->timer;
 if (!timer)
  return -EINVAL;

 spin_lock_irqsave(&timer->lock, flags);
 if (timeri->flags & SNDRV_TIMER_IFLG_DEAD) {
  result = -EINVAL;
  goto unlock;
 }
 if (timer->card && timer->card->shutdown) {
  result = -ENODEV;
  goto unlock;
 }
 if (timeri->flags & (SNDRV_TIMER_IFLG_RUNNING |
        SNDRV_TIMER_IFLG_START)) {
  result = -EBUSY;
  goto unlock;
 }

 if (start)
  timeri->ticks = timeri->cticks = ticks;
 else if (!timeri->cticks)
  timeri->cticks = 1;
 timeri->pticks = 0;

 list_move_tail(&timeri->active_list, &timer->active_list_head);
 if (timer->running) {
  if (timer->hw.flags & SNDRV_TIMER_HW_SLAVE)
   goto __start_now;
  timer->flags |= SNDRV_TIMER_FLG_RESCHED;
  timeri->flags |= SNDRV_TIMER_IFLG_START;
  result = 1;
 } else {
  if (start)
   timer->sticks = ticks;
  timer->hw.start(timer);
       __start_now:
  timer->running++;
  timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
  result = 0;
 }
 snd_timer_notify1(timeri, start ? SNDRV_TIMER_EVENT_START :
     SNDRV_TIMER_EVENT_CONTINUE);
 unlock:
 spin_unlock_irqrestore(&timer->lock, flags);
 return result;
}
