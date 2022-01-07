
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int queue; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 int num_queues ;
 struct snd_seq_queue** queue_list ;
 int queue_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int queue_list_add(struct snd_seq_queue *q)
{
 int i;
 unsigned long flags;

 spin_lock_irqsave(&queue_list_lock, flags);
 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if (! queue_list[i]) {
   queue_list[i] = q;
   q->queue = i;
   num_queues++;
   spin_unlock_irqrestore(&queue_list_lock, flags);
   return i;
  }
 }
 spin_unlock_irqrestore(&queue_list_lock, flags);
 return -1;
}
