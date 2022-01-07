
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int num_queues ;

int snd_seq_queue_get_cur_queues(void)
{
 return num_queues;
}
