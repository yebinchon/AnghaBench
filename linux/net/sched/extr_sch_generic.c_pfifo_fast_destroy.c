
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct skb_array {TYPE_1__ ring; } ;
struct pfifo_fast_priv {int dummy; } ;
struct Qdisc {int dummy; } ;


 int PFIFO_FAST_BANDS ;
 struct skb_array* band2list (struct pfifo_fast_priv*,int) ;
 int ptr_ring_cleanup (TYPE_1__*,int *) ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static void pfifo_fast_destroy(struct Qdisc *sch)
{
 struct pfifo_fast_priv *priv = qdisc_priv(sch);
 int prio;

 for (prio = 0; prio < PFIFO_FAST_BANDS; prio++) {
  struct skb_array *q = band2list(priv, prio);




  if (!q->ring.queue)
   continue;



  ptr_ring_cleanup(&q->ring, ((void*)0));
 }
}
