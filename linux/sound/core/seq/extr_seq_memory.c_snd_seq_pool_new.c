
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int size; scalar_t__ max_used; int output_sleep; scalar_t__ closing; int counter; scalar_t__ total_elements; int * free; int * ptr; int lock; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct snd_seq_pool* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

struct snd_seq_pool *snd_seq_pool_new(int poolsize)
{
 struct snd_seq_pool *pool;


 pool = kzalloc(sizeof(*pool), GFP_KERNEL);
 if (!pool)
  return ((void*)0);
 spin_lock_init(&pool->lock);
 pool->ptr = ((void*)0);
 pool->free = ((void*)0);
 pool->total_elements = 0;
 atomic_set(&pool->counter, 0);
 pool->closing = 0;
 init_waitqueue_head(&pool->output_sleep);

 pool->size = poolsize;


 pool->max_used = 0;
 return pool;
}
