
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {scalar_t__ cells; int input_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 int poll_wait (struct file*,int *,int *) ;

int snd_seq_fifo_poll_wait(struct snd_seq_fifo *f, struct file *file,
      poll_table *wait)
{
 poll_wait(file, &f->input_sleep, wait);
 return (f->cells > 0);
}
