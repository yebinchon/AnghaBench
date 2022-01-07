
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer {int lock; } ;
struct list_head {int next; } ;


 int list_del_init (int ) ;
 int list_empty (struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_timer_clear_callbacks(struct snd_timer *timer,
          struct list_head *head)
{
 unsigned long flags;

 spin_lock_irqsave(&timer->lock, flags);
 while (!list_empty(head))
  list_del_init(head->next);
 spin_unlock_irqrestore(&timer->lock, flags);
}
