
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int lock; scalar_t__ closing; scalar_t__ total_elements; int * free; struct snd_seq_event_cell* ptr; int counter; int output_sleep; } ;
struct snd_seq_event_cell {int dummy; } ;


 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 int kvfree (struct snd_seq_event_cell*) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

int snd_seq_pool_done(struct snd_seq_pool *pool)
{
 struct snd_seq_event_cell *ptr;

 if (snd_BUG_ON(!pool))
  return -EINVAL;


 if (waitqueue_active(&pool->output_sleep))
  wake_up(&pool->output_sleep);

 while (atomic_read(&pool->counter) > 0)
  schedule_timeout_uninterruptible(1);


 spin_lock_irq(&pool->lock);
 ptr = pool->ptr;
 pool->ptr = ((void*)0);
 pool->free = ((void*)0);
 pool->total_elements = 0;
 spin_unlock_irq(&pool->lock);

 kvfree(ptr);

 spin_lock_irq(&pool->lock);
 pool->closing = 0;
 spin_unlock_irq(&pool->lock);

 return 0;
}
