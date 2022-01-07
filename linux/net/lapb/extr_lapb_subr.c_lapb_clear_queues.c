
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapb_cb {int ack_queue; int write_queue; } ;


 int skb_queue_purge (int *) ;

void lapb_clear_queues(struct lapb_cb *lapb)
{
 skb_queue_purge(&lapb->write_queue);
 skb_queue_purge(&lapb->ack_queue);
}
