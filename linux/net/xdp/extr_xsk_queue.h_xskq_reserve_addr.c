
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {int prod_head; } ;


 int ENOSPC ;
 scalar_t__ xskq_nb_free (struct xsk_queue*,int ,int) ;

__attribute__((used)) static inline int xskq_reserve_addr(struct xsk_queue *q)
{
 if (xskq_nb_free(q, q->prod_head, 1) == 0)
  return -ENOSPC;


 q->prod_head++;
 return 0;
}
