
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_seq_queue {int timeq; int tickq; TYPE_3__* timer; } ;
struct TYPE_6__ {int time; int tick; } ;
struct TYPE_8__ {int queue; int flags; TYPE_2__ time; } ;
struct snd_seq_event_cell {TYPE_4__ event; } ;
struct TYPE_5__ {int cur_tick; } ;
struct TYPE_7__ {int cur_time; TYPE_1__ tick; } ;


 int EINVAL ;
 int SNDRV_SEQ_TIME_MODE_ABS ;
 int SNDRV_SEQ_TIME_MODE_MASK ;
 int SNDRV_SEQ_TIME_MODE_REL ;
 int SNDRV_SEQ_TIME_STAMP_MASK ;


 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_check_queue (struct snd_seq_queue*,int,int) ;
 int snd_seq_inc_real_time (int *,int *) ;
 int snd_seq_prioq_cell_in (int ,struct snd_seq_event_cell*) ;

int snd_seq_enqueue_event(struct snd_seq_event_cell *cell, int atomic, int hop)
{
 int dest, err;
 struct snd_seq_queue *q;

 if (snd_BUG_ON(!cell))
  return -EINVAL;
 dest = cell->event.queue;
 q = queueptr(dest);
 if (q == ((void*)0))
  return -EINVAL;

 if ((cell->event.flags & SNDRV_SEQ_TIME_MODE_MASK) == SNDRV_SEQ_TIME_MODE_REL) {
  switch (cell->event.flags & SNDRV_SEQ_TIME_STAMP_MASK) {
  case 128:
   cell->event.time.tick += q->timer->tick.cur_tick;
   break;

  case 129:
   snd_seq_inc_real_time(&cell->event.time.time,
           &q->timer->cur_time);
   break;
  }
  cell->event.flags &= ~SNDRV_SEQ_TIME_MODE_MASK;
  cell->event.flags |= SNDRV_SEQ_TIME_MODE_ABS;
 }

 switch (cell->event.flags & SNDRV_SEQ_TIME_STAMP_MASK) {
 case 128:
  err = snd_seq_prioq_cell_in(q->tickq, cell);
  break;

 case 129:
 default:
  err = snd_seq_prioq_cell_in(q->timeq, cell);
  break;
 }

 if (err < 0) {
  queuefree(q);
  return err;
 }


 snd_seq_check_queue(q, atomic, hop);

 queuefree(q);

 return 0;
}
