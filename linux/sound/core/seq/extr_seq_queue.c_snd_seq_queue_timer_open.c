
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int dummy; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;


 int EINVAL ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_timer_defaults (struct snd_seq_timer*) ;
 int snd_seq_timer_open (struct snd_seq_queue*) ;

int snd_seq_queue_timer_open(int queueid)
{
 int result = 0;
 struct snd_seq_queue *queue;
 struct snd_seq_timer *tmr;

 queue = queueptr(queueid);
 if (queue == ((void*)0))
  return -EINVAL;
 tmr = queue->timer;
 if ((result = snd_seq_timer_open(queue)) < 0) {
  snd_seq_timer_defaults(tmr);
  result = snd_seq_timer_open(queue);
 }
 queuefree(queue);
 return result;
}
