
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsk_queue {int prod_tail; TYPE_1__* ring; int prod_head; } ;
struct TYPE_2__ {int producer; } ;


 int WRITE_ONCE (int ,int ) ;
 int smp_wmb () ;

__attribute__((used)) static inline void xskq_produce_flush_desc(struct xsk_queue *q)
{

 smp_wmb();

 q->prod_tail = q->prod_head;
 WRITE_ONCE(q->ring->producer, q->prod_tail);
}
