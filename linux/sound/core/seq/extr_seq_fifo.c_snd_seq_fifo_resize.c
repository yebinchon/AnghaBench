
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int dummy; } ;
struct snd_seq_fifo {int use_lock; int lock; scalar_t__ cells; int * tail; struct snd_seq_event_cell* head; struct snd_seq_pool* pool; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_cell_free (struct snd_seq_event_cell*) ;
 int snd_seq_pool_delete (struct snd_seq_pool**) ;
 scalar_t__ snd_seq_pool_init (struct snd_seq_pool*) ;
 int snd_seq_pool_mark_closing (struct snd_seq_pool*) ;
 struct snd_seq_pool* snd_seq_pool_new (int) ;
 int snd_use_lock_sync (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_seq_fifo_resize(struct snd_seq_fifo *f, int poolsize)
{
 struct snd_seq_pool *newpool, *oldpool;
 struct snd_seq_event_cell *cell, *next, *oldhead;

 if (snd_BUG_ON(!f || !f->pool))
  return -EINVAL;


 newpool = snd_seq_pool_new(poolsize);
 if (newpool == ((void*)0))
  return -ENOMEM;
 if (snd_seq_pool_init(newpool) < 0) {
  snd_seq_pool_delete(&newpool);
  return -ENOMEM;
 }

 spin_lock_irq(&f->lock);

 oldpool = f->pool;
 oldhead = f->head;

 f->pool = newpool;
 f->head = ((void*)0);
 f->tail = ((void*)0);
 f->cells = 0;

 spin_unlock_irq(&f->lock);


 snd_seq_pool_mark_closing(oldpool);
 snd_use_lock_sync(&f->use_lock);


 for (cell = oldhead; cell; cell = next) {
  next = cell->next;
  snd_seq_cell_free(cell);
 }
 snd_seq_pool_delete(&oldpool);

 return 0;
}
