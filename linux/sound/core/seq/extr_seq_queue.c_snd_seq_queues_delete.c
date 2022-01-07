
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNDRV_SEQ_MAX_QUEUES ;
 int queue_delete (scalar_t__) ;
 scalar_t__* queue_list ;

void snd_seq_queues_delete(void)
{
 int i;


 for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
  if (queue_list[i])
   queue_delete(queue_list[i]);
 }
}
