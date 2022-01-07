
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int dummy; } ;


 int EINVAL ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_timer_close (struct snd_seq_queue*) ;

int snd_seq_queue_timer_close(int queueid)
{
 struct snd_seq_queue *queue;
 int result = 0;

 queue = queueptr(queueid);
 if (queue == ((void*)0))
  return -EINVAL;
 snd_seq_timer_close(queue);
 queuefree(queue);
 return result;
}
