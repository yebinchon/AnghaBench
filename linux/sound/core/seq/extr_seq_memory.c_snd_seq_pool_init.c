
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int size; int room; int total_elements; int lock; scalar_t__ max_used; struct snd_seq_event_cell* free; struct snd_seq_event_cell* ptr; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; struct snd_seq_pool* pool; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kvfree (struct snd_seq_event_cell*) ;
 struct snd_seq_event_cell* kvmalloc_array (int,int,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int snd_seq_pool_init(struct snd_seq_pool *pool)
{
 int cell;
 struct snd_seq_event_cell *cellptr;

 if (snd_BUG_ON(!pool))
  return -EINVAL;

 cellptr = kvmalloc_array(sizeof(struct snd_seq_event_cell), pool->size,
     GFP_KERNEL);
 if (!cellptr)
  return -ENOMEM;


 spin_lock_irq(&pool->lock);
 if (pool->ptr) {
  spin_unlock_irq(&pool->lock);
  kvfree(cellptr);
  return 0;
 }

 pool->ptr = cellptr;
 pool->free = ((void*)0);

 for (cell = 0; cell < pool->size; cell++) {
  cellptr = pool->ptr + cell;
  cellptr->pool = pool;
  cellptr->next = pool->free;
  pool->free = cellptr;
 }
 pool->room = (pool->size + 1) / 2;


 pool->max_used = 0;
 pool->total_elements = pool->size;
 spin_unlock_irq(&pool->lock);
 return 0;
}
