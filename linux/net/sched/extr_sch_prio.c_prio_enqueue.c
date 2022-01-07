
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {int qlen; } ;
struct TYPE_4__ {unsigned int backlog; } ;
struct Qdisc {TYPE_1__ q; TYPE_2__ qstats; } ;


 int NET_XMIT_SUCCESS ;
 int __NET_XMIT_BYPASS ;
 int __qdisc_drop (struct sk_buff*,struct sk_buff**) ;
 scalar_t__ net_xmit_drop_count (int) ;
 struct Qdisc* prio_classify (struct sk_buff*,struct Qdisc*,int*) ;
 int qdisc_enqueue (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 unsigned int qdisc_pkt_len (struct sk_buff*) ;
 int qdisc_qstats_drop (struct Qdisc*) ;

__attribute__((used)) static int
prio_enqueue(struct sk_buff *skb, struct Qdisc *sch, struct sk_buff **to_free)
{
 unsigned int len = qdisc_pkt_len(skb);
 struct Qdisc *qdisc;
 int ret;

 qdisc = prio_classify(skb, sch, &ret);
 ret = qdisc_enqueue(skb, qdisc, to_free);
 if (ret == NET_XMIT_SUCCESS) {
  sch->qstats.backlog += len;
  sch->q.qlen++;
  return NET_XMIT_SUCCESS;
 }
 if (net_xmit_drop_count(ret))
  qdisc_qstats_drop(sch);
 return ret;
}
