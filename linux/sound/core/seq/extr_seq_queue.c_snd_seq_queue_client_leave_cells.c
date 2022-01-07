
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int timeq; int tickq; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_prioq_leave (int ,int,int ) ;

void snd_seq_queue_client_leave_cells(int client)
{
 int i;
 struct snd_seq_queue *q;

 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if ((q = queueptr(i)) == ((void*)0))
   continue;
  snd_seq_prioq_leave(q->tickq, client, 0);
  snd_seq_prioq_leave(q->timeq, client, 0);
  queuefree(q);
 }
}
