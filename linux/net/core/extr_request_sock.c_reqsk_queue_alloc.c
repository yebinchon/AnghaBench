
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qlen; int * rskq_rst_tail; int * rskq_rst_head; int lock; } ;
struct request_sock_queue {int * rskq_accept_head; TYPE_1__ fastopenq; int rskq_lock; } ;


 int spin_lock_init (int *) ;

void reqsk_queue_alloc(struct request_sock_queue *queue)
{
 spin_lock_init(&queue->rskq_lock);

 spin_lock_init(&queue->fastopenq.lock);
 queue->fastopenq.rskq_rst_head = ((void*)0);
 queue->fastopenq.rskq_rst_tail = ((void*)0);
 queue->fastopenq.qlen = 0;

 queue->rskq_accept_head = ((void*)0);
}
