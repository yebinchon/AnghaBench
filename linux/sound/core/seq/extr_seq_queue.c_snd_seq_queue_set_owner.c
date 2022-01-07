
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int locked; int owner; } ;


 int EINVAL ;
 int EPERM ;
 int queue_access_lock (struct snd_seq_queue*,int) ;
 int queue_access_unlock (struct snd_seq_queue*) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;

int snd_seq_queue_set_owner(int queueid, int client, int locked)
{
 struct snd_seq_queue *q = queueptr(queueid);

 if (q == ((void*)0))
  return -EINVAL;

 if (! queue_access_lock(q, client)) {
  queuefree(q);
  return -EPERM;
 }

 q->locked = locked ? 1 : 0;
 q->owner = client;
 queue_access_unlock(q);
 queuefree(q);

 return 0;
}
