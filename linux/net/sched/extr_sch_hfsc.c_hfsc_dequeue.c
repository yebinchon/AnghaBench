
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct hfsc_sched {int root; } ;
struct hfsc_class {int cl_flags; TYPE_3__* qdisc; int cl_cumul; int bstats; } ;
struct TYPE_7__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_8__ {TYPE_1__ q; } ;


 int HFSC_RSC ;
 int bstats_update (int *,struct sk_buff*) ;
 struct hfsc_class* eltree_get_mindl (struct hfsc_sched*,int ) ;
 int eltree_remove (struct hfsc_class*) ;
 int hfsc_schedule_watchdog (struct Qdisc*) ;
 int psched_get_time () ;
 int qdisc_bstats_update (struct Qdisc*,struct sk_buff*) ;
 struct sk_buff* qdisc_dequeue_peeked (TYPE_3__*) ;
 unsigned int qdisc_peek_len (TYPE_3__*) ;
 scalar_t__ qdisc_pkt_len (struct sk_buff*) ;
 struct hfsc_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int qdisc_qstats_overlimit (struct Qdisc*) ;
 int qdisc_warn_nonwc (char*,TYPE_3__*) ;
 int update_d (struct hfsc_class*,unsigned int) ;
 int update_ed (struct hfsc_class*,unsigned int) ;
 int update_vf (struct hfsc_class*,scalar_t__,int ) ;
 struct hfsc_class* vttree_get_minvt (int *,int ) ;

__attribute__((used)) static struct sk_buff *
hfsc_dequeue(struct Qdisc *sch)
{
 struct hfsc_sched *q = qdisc_priv(sch);
 struct hfsc_class *cl;
 struct sk_buff *skb;
 u64 cur_time;
 unsigned int next_len;
 int realtime = 0;

 if (sch->q.qlen == 0)
  return ((void*)0);

 cur_time = psched_get_time();






 cl = eltree_get_mindl(q, cur_time);
 if (cl) {
  realtime = 1;
 } else {




  cl = vttree_get_minvt(&q->root, cur_time);
  if (cl == ((void*)0)) {
   qdisc_qstats_overlimit(sch);
   hfsc_schedule_watchdog(sch);
   return ((void*)0);
  }
 }

 skb = qdisc_dequeue_peeked(cl->qdisc);
 if (skb == ((void*)0)) {
  qdisc_warn_nonwc("HFSC", cl->qdisc);
  return ((void*)0);
 }

 bstats_update(&cl->bstats, skb);
 update_vf(cl, qdisc_pkt_len(skb), cur_time);
 if (realtime)
  cl->cl_cumul += qdisc_pkt_len(skb);

 if (cl->cl_flags & HFSC_RSC) {
  if (cl->qdisc->q.qlen != 0) {

   next_len = qdisc_peek_len(cl->qdisc);
   if (realtime)
    update_ed(cl, next_len);
   else
    update_d(cl, next_len);
  } else {

   eltree_remove(cl);
  }
 }

 qdisc_bstats_update(sch, skb);
 qdisc_qstats_backlog_dec(sch, skb);
 sch->q.qlen--;

 return skb;
}
