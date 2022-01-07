
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int use_lock; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 struct snd_seq_queue** queue_list ;
 int queue_list_lock ;
 int snd_use_lock_use (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct snd_seq_queue *queueptr(int queueid)
{
 struct snd_seq_queue *q;
 unsigned long flags;

 if (queueid < 0 || queueid >= SNDRV_SEQ_MAX_QUEUES)
  return ((void*)0);
 spin_lock_irqsave(&queue_list_lock, flags);
 q = queue_list[queueid];
 if (q)
  snd_use_lock_use(&q->use_lock);
 spin_unlock_irqrestore(&queue_list_lock, flags);
 return q;
}
