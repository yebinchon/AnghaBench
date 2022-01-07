
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int clients_bitmap; } ;


 int EINVAL ;
 int queuefree (struct snd_seq_queue*) ;
 struct snd_seq_queue* queueptr (int) ;
 scalar_t__ test_bit (int,int ) ;

int snd_seq_queue_is_used(int queueid, int client)
{
 struct snd_seq_queue *q;
 int result;

 q = queueptr(queueid);
 if (q == ((void*)0))
  return -EINVAL;
 result = test_bit(client, q->clients_bitmap) ? 1 : 0;
 queuefree(q);
 return result;
}
