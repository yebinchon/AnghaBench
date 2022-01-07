
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {scalar_t__ pool; int input_sleep; } ;


 int kfree (struct snd_seq_fifo*) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_fifo_clear (struct snd_seq_fifo*) ;
 int snd_seq_pool_delete (scalar_t__*) ;
 int snd_seq_pool_done (scalar_t__) ;
 int snd_seq_pool_mark_closing (scalar_t__) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void snd_seq_fifo_delete(struct snd_seq_fifo **fifo)
{
 struct snd_seq_fifo *f;

 if (snd_BUG_ON(!fifo))
  return;
 f = *fifo;
 if (snd_BUG_ON(!f))
  return;
 *fifo = ((void*)0);

 if (f->pool)
  snd_seq_pool_mark_closing(f->pool);

 snd_seq_fifo_clear(f);


 if (waitqueue_active(&f->input_sleep))
  wake_up(&f->input_sleep);




 if (f->pool) {
  snd_seq_pool_done(f->pool);
  snd_seq_pool_delete(&f->pool);
 }

 kfree(f);
}
