
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_remove_events {int remove_mode; scalar_t__ queue; } ;
struct snd_seq_queue {scalar_t__ queue; int timeq; int tickq; int clients_bitmap; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 int SNDRV_SEQ_REMOVE_DEST ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 int snd_seq_prioq_remove_events (int ,int,struct snd_seq_remove_events*) ;
 scalar_t__ test_bit (int,int ) ;

void snd_seq_queue_remove_cells(int client, struct snd_seq_remove_events *info)
{
 int i;
 struct snd_seq_queue *q;

 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if ((q = queueptr(i)) == ((void*)0))
   continue;
  if (test_bit(client, q->clients_bitmap) &&
      (! (info->remove_mode & SNDRV_SEQ_REMOVE_DEST) ||
       q->queue == info->queue)) {
   snd_seq_prioq_remove_events(q->tickq, client, info);
   snd_seq_prioq_remove_events(q->timeq, client, info);
  }
  queuefree(q);
 }
}
