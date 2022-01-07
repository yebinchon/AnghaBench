
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct fq_flow {int qlen; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 int fq_erase_head (struct Qdisc*,struct fq_flow*,struct sk_buff*) ;
 struct sk_buff* fq_peek (struct fq_flow*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;
 int skb_mark_not_on_list (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *fq_dequeue_head(struct Qdisc *sch, struct fq_flow *flow)
{
 struct sk_buff *skb = fq_peek(flow);

 if (skb) {
  fq_erase_head(sch, flow, skb);
  skb_mark_not_on_list(skb);
  flow->qlen--;
  qdisc_qstats_backlog_dec(sch, skb);
  sch->q.qlen--;
 }
 return skb;
}
