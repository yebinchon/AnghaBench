
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct snd_seq_prioq {int lock; int cells; struct snd_seq_event_cell* tail; struct snd_seq_event_cell* head; } ;
struct TYPE_5__ {int flags; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; TYPE_1__ event; } ;


 int EINVAL ;
 int SNDRV_SEQ_PRIORITY_MASK ;
 scalar_t__ compare_timestamp (TYPE_1__*,TYPE_1__*) ;
 int compare_timestamp_rel (TYPE_1__*,TYPE_1__*) ;
 int pr_err (char*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_prioq_cell_in(struct snd_seq_prioq * f,
     struct snd_seq_event_cell * cell)
{
 struct snd_seq_event_cell *cur, *prev;
 unsigned long flags;
 int count;
 int prior;

 if (snd_BUG_ON(!f || !cell))
  return -EINVAL;


 prior = (cell->event.flags & SNDRV_SEQ_PRIORITY_MASK);

 spin_lock_irqsave(&f->lock, flags);




 if (f->tail && !prior) {
  if (compare_timestamp(&cell->event, &f->tail->event)) {

   f->tail->next = cell;
   f->tail = cell;
   cell->next = ((void*)0);
   f->cells++;
   spin_unlock_irqrestore(&f->lock, flags);
   return 0;
  }
 }



 prev = ((void*)0);
 cur = f->head;

 count = 10000;
 while (cur != ((void*)0)) {

  int rel = compare_timestamp_rel(&cell->event, &cur->event);
  if (rel < 0)

   break;
  else if (rel == 0 && prior)

   break;


  prev = cur;
  cur = cur->next;
  if (! --count) {
   spin_unlock_irqrestore(&f->lock, flags);
   pr_err("ALSA: seq: cannot find a pointer.. infinite loop?\n");
   return -EINVAL;
  }
 }


 if (prev != ((void*)0))
  prev->next = cell;
 cell->next = cur;

 if (f->head == cur)
  f->head = cell;
 if (cur == ((void*)0))
  f->tail = cell;
 f->cells++;
 spin_unlock_irqrestore(&f->lock, flags);
 return 0;
}
