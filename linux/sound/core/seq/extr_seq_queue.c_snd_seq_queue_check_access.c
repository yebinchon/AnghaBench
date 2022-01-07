
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int owner_lock; } ;


 int check_access (struct snd_seq_queue*,int) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_queue_check_access(int queueid, int client)
{
 struct snd_seq_queue *q = queueptr(queueid);
 int access_ok;
 unsigned long flags;

 if (! q)
  return 0;
 spin_lock_irqsave(&q->owner_lock, flags);
 access_ok = check_access(q, client);
 spin_unlock_irqrestore(&q->owner_lock, flags);
 queuefree(q);
 return access_ok;
}
