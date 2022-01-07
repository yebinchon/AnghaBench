
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_prioq {int lock; int cells; struct snd_seq_event_cell* tail; struct snd_seq_event_cell* head; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; int event; } ;


 int event_is_ready (int *,void*) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct snd_seq_event_cell *snd_seq_prioq_cell_out(struct snd_seq_prioq *f,
        void *current_time)
{
 struct snd_seq_event_cell *cell;
 unsigned long flags;

 if (f == ((void*)0)) {
  pr_debug("ALSA: seq: snd_seq_prioq_cell_in() called with NULL prioq\n");
  return ((void*)0);
 }
 spin_lock_irqsave(&f->lock, flags);

 cell = f->head;
 if (cell && current_time && !event_is_ready(&cell->event, current_time))
  cell = ((void*)0);
 if (cell) {
  f->head = cell->next;


  if (f->tail == cell)
   f->tail = ((void*)0);

  cell->next = ((void*)0);
  f->cells--;
 }

 spin_unlock_irqrestore(&f->lock, flags);
 return cell;
}
