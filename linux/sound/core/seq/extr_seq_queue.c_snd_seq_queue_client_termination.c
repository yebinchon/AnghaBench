
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_queue {int owner; int klocked; TYPE_1__* timer; int owner_lock; } ;
struct TYPE_3__ {scalar_t__ running; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_timer_reset (TYPE_1__*) ;
 int snd_seq_timer_stop (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_seq_queue_client_termination(int client)
{
 unsigned long flags;
 int i;
 struct snd_seq_queue *q;

 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if ((q = queueptr(i)) == ((void*)0))
   continue;
  spin_lock_irqsave(&q->owner_lock, flags);
  if (q->owner == client)
   q->klocked = 1;
  spin_unlock_irqrestore(&q->owner_lock, flags);
  if (q->owner == client) {
   if (q->timer->running)
    snd_seq_timer_stop(q->timer);
   snd_seq_timer_reset(q->timer);
  }
  queuefree(q);
 }
}
