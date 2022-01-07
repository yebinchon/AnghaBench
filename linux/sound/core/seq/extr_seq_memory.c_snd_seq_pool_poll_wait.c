
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int output_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 int poll_wait (struct file*,int *,int *) ;
 int snd_seq_output_ok (struct snd_seq_pool*) ;

int snd_seq_pool_poll_wait(struct snd_seq_pool *pool, struct file *file,
      poll_table *wait)
{
 poll_wait(file, &pool->output_sleep, wait);
 return snd_seq_output_ok(pool);
}
