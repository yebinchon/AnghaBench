
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {int ring; } ;


 int kfree (struct xsk_queue*) ;
 int page_frag_free (int ) ;

void xskq_destroy(struct xsk_queue *q)
{
 if (!q)
  return;

 page_frag_free(q->ring);
 kfree(q);
}
