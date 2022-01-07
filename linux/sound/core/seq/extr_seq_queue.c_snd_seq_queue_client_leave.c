
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int queue; int timeq; int tickq; int clients_bitmap; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 int queue_delete (struct snd_seq_queue*) ;
 struct snd_seq_queue* queue_list_remove (int,int) ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_prioq_leave (int ,int,int ) ;
 int snd_seq_queue_use (int ,int,int ) ;
 scalar_t__ test_bit (int,int ) ;

void snd_seq_queue_client_leave(int client)
{
 int i;
 struct snd_seq_queue *q;


 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if ((q = queue_list_remove(i, client)) != ((void*)0))
   queue_delete(q);
 }




 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if ((q = queueptr(i)) == ((void*)0))
   continue;
  if (test_bit(client, q->clients_bitmap)) {
   snd_seq_prioq_leave(q->tickq, client, 0);
   snd_seq_prioq_leave(q->timeq, client, 0);
   snd_seq_queue_use(q->queue, client, 0);
  }
  queuefree(q);
 }
}
