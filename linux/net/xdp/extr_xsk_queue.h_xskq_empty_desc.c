
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {scalar_t__ nentries; int prod_tail; } ;


 scalar_t__ xskq_nb_free (struct xsk_queue*,int ,scalar_t__) ;

__attribute__((used)) static inline bool xskq_empty_desc(struct xsk_queue *q)
{
 return xskq_nb_free(q, q->prod_tail, q->nentries) == q->nentries;
}
