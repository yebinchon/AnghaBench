
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cbq_sched_data {scalar_t__ tx_len; int activemask; struct cbq_class** active; struct cbq_class* tx_borrowed; struct cbq_class* tx_class; } ;
struct TYPE_4__ {scalar_t__ borrows; } ;
struct cbq_class {scalar_t__ deficit; scalar_t__ quantum; int cpriority; struct cbq_class* next_alive; TYPE_3__* q; TYPE_1__ xstats; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_6__ {TYPE_2__ q; struct sk_buff* (* dequeue ) (TYPE_3__*) ;} ;


 int cbq_activate_class (struct cbq_class*) ;
 struct cbq_class* cbq_under_limit (struct cbq_class*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct cbq_sched_data* qdisc_priv (struct Qdisc*) ;
 struct sk_buff* stub1 (TYPE_3__*) ;

__attribute__((used)) static inline struct sk_buff *
cbq_dequeue_prio(struct Qdisc *sch, int prio)
{
 struct cbq_sched_data *q = qdisc_priv(sch);
 struct cbq_class *cl_tail, *cl_prev, *cl;
 struct sk_buff *skb;
 int deficit;

 cl_tail = cl_prev = q->active[prio];
 cl = cl_prev->next_alive;

 do {
  deficit = 0;


  do {
   struct cbq_class *borrow = cl;

   if (cl->q->q.qlen &&
       (borrow = cbq_under_limit(cl)) == ((void*)0))
    goto skip_class;

   if (cl->deficit <= 0) {



    deficit = 1;
    cl->deficit += cl->quantum;
    goto next_class;
   }

   skb = cl->q->dequeue(cl->q);





   if (skb == ((void*)0))
    goto skip_class;

   cl->deficit -= qdisc_pkt_len(skb);
   q->tx_class = cl;
   q->tx_borrowed = borrow;
   if (borrow != cl) {

    borrow->xstats.borrows++;
    cl->xstats.borrows++;




   }
   q->tx_len = qdisc_pkt_len(skb);

   if (cl->deficit <= 0) {
    q->active[prio] = cl;
    cl = cl->next_alive;
    cl->deficit += cl->quantum;
   }
   return skb;

skip_class:
   if (cl->q->q.qlen == 0 || prio != cl->cpriority) {



    cl_prev->next_alive = cl->next_alive;
    cl->next_alive = ((void*)0);


    if (cl == cl_tail) {

     cl_tail = cl_prev;


     if (cl == cl_tail) {

      q->active[prio] = ((void*)0);
      q->activemask &= ~(1<<prio);
      if (cl->q->q.qlen)
       cbq_activate_class(cl);
      return ((void*)0);
     }

     q->active[prio] = cl_tail;
    }
    if (cl->q->q.qlen)
     cbq_activate_class(cl);

    cl = cl_prev;
   }

next_class:
   cl_prev = cl;
   cl = cl->next_alive;
  } while (cl_prev != cl_tail);
 } while (deficit);

 q->active[prio] = cl_prev;

 return ((void*)0);
}
