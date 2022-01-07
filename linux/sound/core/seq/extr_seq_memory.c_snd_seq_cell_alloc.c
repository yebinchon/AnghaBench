
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;
struct snd_seq_pool {int max_used; int lock; int event_alloc_failures; int event_alloc_success; int counter; struct snd_seq_event_cell* free; scalar_t__ closing; int output_sleep; int * ptr; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;
struct mutex {int dummy; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int current ;
 int init_waitqueue_entry (int *,int ) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int pr_debug (char*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_seq_cell_alloc(struct snd_seq_pool *pool,
         struct snd_seq_event_cell **cellp,
         int nonblock, struct file *file,
         struct mutex *mutexp)
{
 struct snd_seq_event_cell *cell;
 unsigned long flags;
 int err = -EAGAIN;
 wait_queue_entry_t wait;

 if (pool == ((void*)0))
  return -EINVAL;

 *cellp = ((void*)0);

 init_waitqueue_entry(&wait, current);
 spin_lock_irqsave(&pool->lock, flags);
 if (pool->ptr == ((void*)0)) {
  pr_debug("ALSA: seq: pool is not initialized\n");
  err = -EINVAL;
  goto __error;
 }
 while (pool->free == ((void*)0) && ! nonblock && ! pool->closing) {

  set_current_state(TASK_INTERRUPTIBLE);
  add_wait_queue(&pool->output_sleep, &wait);
  spin_unlock_irqrestore(&pool->lock, flags);
  if (mutexp)
   mutex_unlock(mutexp);
  schedule();
  if (mutexp)
   mutex_lock(mutexp);
  spin_lock_irqsave(&pool->lock, flags);
  remove_wait_queue(&pool->output_sleep, &wait);

  if (signal_pending(current)) {
   err = -ERESTARTSYS;
   goto __error;
  }
 }
 if (pool->closing) {
  err = -ENOMEM;
  goto __error;
 }

 cell = pool->free;
 if (cell) {
  int used;
  pool->free = cell->next;
  atomic_inc(&pool->counter);
  used = atomic_read(&pool->counter);
  if (pool->max_used < used)
   pool->max_used = used;
  pool->event_alloc_success++;

  cell->next = ((void*)0);
  err = 0;
 } else
  pool->event_alloc_failures++;
 *cellp = cell;

__error:
 spin_unlock_irqrestore(&pool->lock, flags);
 return err;
}
