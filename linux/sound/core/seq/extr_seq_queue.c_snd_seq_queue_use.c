
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int timer_mutex; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_use (struct snd_seq_queue*,int,int) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;

int snd_seq_queue_use(int queueid, int client, int use)
{
 struct snd_seq_queue *queue;

 queue = queueptr(queueid);
 if (queue == ((void*)0))
  return -EINVAL;
 mutex_lock(&queue->timer_mutex);
 queue_use(queue, client, use);
 mutex_unlock(&queue->timer_mutex);
 queuefree(queue);
 return 0;
}
