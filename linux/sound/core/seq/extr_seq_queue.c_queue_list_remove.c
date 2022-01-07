
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int owner; int klocked; int owner_lock; } ;


 int num_queues ;
 struct snd_seq_queue** queue_list ;
 int queue_list_lock ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct snd_seq_queue *queue_list_remove(int id, int client)
{
 struct snd_seq_queue *q;
 unsigned long flags;

 spin_lock_irqsave(&queue_list_lock, flags);
 q = queue_list[id];
 if (q) {
  spin_lock(&q->owner_lock);
  if (q->owner == client) {

   q->klocked = 1;
   spin_unlock(&q->owner_lock);
   queue_list[id] = ((void*)0);
   num_queues--;
   spin_unlock_irqrestore(&queue_list_lock, flags);
   return q;
  }
  spin_unlock(&q->owner_lock);
 }
 spin_unlock_irqrestore(&queue_list_lock, flags);
 return ((void*)0);
}
