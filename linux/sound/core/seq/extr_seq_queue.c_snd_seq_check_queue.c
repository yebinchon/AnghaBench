
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_queue {int check_blocked; int check_again; int check_lock; TYPE_2__* timer; int timeq; int tickq; } ;
struct snd_seq_event_cell {int dummy; } ;
struct TYPE_3__ {int cur_tick; } ;
struct TYPE_4__ {int cur_time; TYPE_1__ tick; } ;


 int snd_seq_dispatch_event (struct snd_seq_event_cell*,int,int) ;
 struct snd_seq_event_cell* snd_seq_prioq_cell_out (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_seq_check_queue(struct snd_seq_queue *q, int atomic, int hop)
{
 unsigned long flags;
 struct snd_seq_event_cell *cell;

 if (q == ((void*)0))
  return;


 spin_lock_irqsave(&q->check_lock, flags);
 if (q->check_blocked) {
  q->check_again = 1;
  spin_unlock_irqrestore(&q->check_lock, flags);
  return;
 }
 q->check_blocked = 1;
 spin_unlock_irqrestore(&q->check_lock, flags);

      __again:

 for (;;) {
  cell = snd_seq_prioq_cell_out(q->tickq,
           &q->timer->tick.cur_tick);
  if (!cell)
   break;
  snd_seq_dispatch_event(cell, atomic, hop);
 }


 for (;;) {
  cell = snd_seq_prioq_cell_out(q->timeq, &q->timer->cur_time);
  if (!cell)
   break;
  snd_seq_dispatch_event(cell, atomic, hop);
 }


 spin_lock_irqsave(&q->check_lock, flags);
 if (q->check_again) {
  q->check_again = 0;
  spin_unlock_irqrestore(&q->check_lock, flags);
  goto __again;
 }
 q->check_blocked = 0;
 spin_unlock_irqrestore(&q->check_lock, flags);
}
