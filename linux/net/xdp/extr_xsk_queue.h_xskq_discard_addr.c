
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {int cons_tail; } ;



__attribute__((used)) static inline void xskq_discard_addr(struct xsk_queue *q)
{
 q->cons_tail++;
}
