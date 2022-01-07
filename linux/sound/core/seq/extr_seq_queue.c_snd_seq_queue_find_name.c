
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int name; } ;


 int SNDRV_SEQ_MAX_QUEUES ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 scalar_t__ strncmp (int ,char*,int) ;

struct snd_seq_queue *snd_seq_queue_find_name(char *name)
{
 int i;
 struct snd_seq_queue *q;

 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if ((q = queueptr(i)) != ((void*)0)) {
   if (strncmp(q->name, name, sizeof(q->name)) == 0)
    return q;
   queuefree(q);
  }
 }
 return ((void*)0);
}
