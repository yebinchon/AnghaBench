
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int klocked; int owner_lock; } ;


 int check_access (struct snd_seq_queue*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int queue_access_lock(struct snd_seq_queue *q, int client)
{
 unsigned long flags;
 int access_ok;

 spin_lock_irqsave(&q->owner_lock, flags);
 access_ok = check_access(q, client);
 if (access_ok)
  q->klocked = 1;
 spin_unlock_irqrestore(&q->owner_lock, flags);
 return access_ok;
}
