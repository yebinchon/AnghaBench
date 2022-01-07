
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int dummy; } ;


 int EINVAL ;
 int SNDRV_SEQ_MAX_QUEUES ;
 int queue_delete (struct snd_seq_queue*) ;
 struct snd_seq_queue* queue_list_remove (int,int) ;

int snd_seq_queue_delete(int client, int queueid)
{
 struct snd_seq_queue *q;

 if (queueid < 0 || queueid >= SNDRV_SEQ_MAX_QUEUES)
  return -EINVAL;
 q = queue_list_remove(queueid, client);
 if (q == ((void*)0))
  return -EINVAL;
 queue_delete(q);

 return 0;
}
