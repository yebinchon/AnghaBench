
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {scalar_t__ nentries; } ;


 scalar_t__ xskq_nb_avail (struct xsk_queue*,scalar_t__) ;

__attribute__((used)) static inline bool xskq_full_desc(struct xsk_queue *q)
{
 return xskq_nb_avail(q, q->nentries) == q->nentries;
}
