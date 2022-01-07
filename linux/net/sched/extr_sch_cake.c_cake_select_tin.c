
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct sk_buff {int mark; int priority; } ;
struct cake_tin_data {int dummy; } ;
struct cake_sched_data {int rate_flags; int fwmark_mask; int fwmark_shft; scalar_t__ tin_mode; int tin_cnt; int* tin_order; int* tin_index; struct cake_tin_data* tins; } ;
struct Qdisc {scalar_t__ handle; } ;


 scalar_t__ CAKE_DIFFSERV_BESTEFFORT ;
 int CAKE_FLAG_WASH ;
 scalar_t__ TC_H_MAJ (int ) ;
 int TC_H_MIN (int ) ;
 size_t cake_handle_diffserv (struct sk_buff*,int) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct cake_tin_data *cake_select_tin(struct Qdisc *sch,
          struct sk_buff *skb)
{
 struct cake_sched_data *q = qdisc_priv(sch);
 u32 tin, mark;
 u8 dscp;




 dscp = cake_handle_diffserv(skb,
        q->rate_flags & CAKE_FLAG_WASH);
 mark = (skb->mark & q->fwmark_mask) >> q->fwmark_shft;

 if (q->tin_mode == CAKE_DIFFSERV_BESTEFFORT)
  tin = 0;

 else if (mark && mark <= q->tin_cnt)
  tin = q->tin_order[mark - 1];

 else if (TC_H_MAJ(skb->priority) == sch->handle &&
   TC_H_MIN(skb->priority) > 0 &&
   TC_H_MIN(skb->priority) <= q->tin_cnt)
  tin = q->tin_order[TC_H_MIN(skb->priority) - 1];

 else {
  tin = q->tin_index[dscp];

  if (unlikely(tin >= q->tin_cnt))
   tin = 0;
 }

 return &q->tins[tin];
}
