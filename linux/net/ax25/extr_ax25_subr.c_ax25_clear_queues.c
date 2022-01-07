
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frag_queue; int reseq_queue; int ack_queue; int write_queue; } ;
typedef TYPE_1__ ax25_cb ;


 int skb_queue_purge (int *) ;

void ax25_clear_queues(ax25_cb *ax25)
{
 skb_queue_purge(&ax25->write_queue);
 skb_queue_purge(&ax25->ack_queue);
 skb_queue_purge(&ax25->reseq_queue);
 skb_queue_purge(&ax25->frag_queue);
}
