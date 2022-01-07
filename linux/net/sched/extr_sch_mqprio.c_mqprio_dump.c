
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tc_mqprio_qopt {unsigned int num_tc; int * offset; int * count; int hw; int prio_tc_map; int member_0; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {unsigned int num_tx_queues; TYPE_2__* tc_to_txq; int prio_tc_map; } ;
struct mqprio_sched {int flags; int shaper; int mode; int hw_offload; } ;
struct TYPE_12__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_9__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_4__ qstats; TYPE_4__ bstats; TYPE_1__ q; int cpu_qstats; int cpu_bstats; } ;
typedef int opt ;
typedef int __u32 ;
struct TYPE_11__ {struct Qdisc* qdisc_sleeping; } ;
struct TYPE_10__ {int offset; int count; } ;


 int NLA_ALIGN (int) ;
 int TCA_MQPRIO_MODE ;
 int TCA_MQPRIO_SHAPER ;
 int TCA_OPTIONS ;
 int TC_MQPRIO_F_MAX_RATE ;
 int TC_MQPRIO_F_MIN_RATE ;
 int TC_MQPRIO_F_MODE ;
 int TC_MQPRIO_F_SHAPER ;
 int __gnet_stats_copy_basic (int *,TYPE_4__*,int ,TYPE_4__*) ;
 int __gnet_stats_copy_queue (TYPE_4__*,int ,TYPE_4__*,int ) ;
 scalar_t__ dump_rates (struct mqprio_sched*,struct tc_mqprio_qopt*,struct sk_buff*) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_4__*,int ,int) ;
 unsigned int netdev_get_num_tc (struct net_device*) ;
 TYPE_3__* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,struct tc_mqprio_qopt*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,struct nlattr*) ;
 struct net_device* qdisc_dev (struct Qdisc*) ;
 scalar_t__ qdisc_is_percpu_stats (struct Qdisc*) ;
 int qdisc_lock (struct Qdisc*) ;
 struct mqprio_sched* qdisc_priv (struct Qdisc*) ;
 int qdisc_qlen_sum (struct Qdisc*) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int ) ;
 int spin_unlock_bh (int ) ;

__attribute__((used)) static int mqprio_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct net_device *dev = qdisc_dev(sch);
 struct mqprio_sched *priv = qdisc_priv(sch);
 struct nlattr *nla = (struct nlattr *)skb_tail_pointer(skb);
 struct tc_mqprio_qopt opt = { 0 };
 struct Qdisc *qdisc;
 unsigned int ntx, tc;

 sch->q.qlen = 0;
 memset(&sch->bstats, 0, sizeof(sch->bstats));
 memset(&sch->qstats, 0, sizeof(sch->qstats));






 for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
  qdisc = netdev_get_tx_queue(dev, ntx)->qdisc_sleeping;
  spin_lock_bh(qdisc_lock(qdisc));

  if (qdisc_is_percpu_stats(qdisc)) {
   __u32 qlen = qdisc_qlen_sum(qdisc);

   __gnet_stats_copy_basic(((void*)0), &sch->bstats,
      qdisc->cpu_bstats,
      &qdisc->bstats);
   __gnet_stats_copy_queue(&sch->qstats,
      qdisc->cpu_qstats,
      &qdisc->qstats, qlen);
  } else {
   sch->q.qlen += qdisc->q.qlen;
   sch->bstats.bytes += qdisc->bstats.bytes;
   sch->bstats.packets += qdisc->bstats.packets;
   sch->qstats.backlog += qdisc->qstats.backlog;
   sch->qstats.drops += qdisc->qstats.drops;
   sch->qstats.requeues += qdisc->qstats.requeues;
   sch->qstats.overlimits += qdisc->qstats.overlimits;
  }

  spin_unlock_bh(qdisc_lock(qdisc));
 }

 opt.num_tc = netdev_get_num_tc(dev);
 memcpy(opt.prio_tc_map, dev->prio_tc_map, sizeof(opt.prio_tc_map));
 opt.hw = priv->hw_offload;

 for (tc = 0; tc < netdev_get_num_tc(dev); tc++) {
  opt.count[tc] = dev->tc_to_txq[tc].count;
  opt.offset[tc] = dev->tc_to_txq[tc].offset;
 }

 if (nla_put(skb, TCA_OPTIONS, NLA_ALIGN(sizeof(opt)), &opt))
  goto nla_put_failure;

 if ((priv->flags & TC_MQPRIO_F_MODE) &&
     nla_put_u16(skb, TCA_MQPRIO_MODE, priv->mode))
  goto nla_put_failure;

 if ((priv->flags & TC_MQPRIO_F_SHAPER) &&
     nla_put_u16(skb, TCA_MQPRIO_SHAPER, priv->shaper))
  goto nla_put_failure;

 if ((priv->flags & TC_MQPRIO_F_MIN_RATE ||
      priv->flags & TC_MQPRIO_F_MAX_RATE) &&
     (dump_rates(priv, &opt, skb) != 0))
  goto nla_put_failure;

 return nla_nest_end(skb, nla);
nla_put_failure:
 nlmsg_trim(skb, nla);
 return -1;
}
