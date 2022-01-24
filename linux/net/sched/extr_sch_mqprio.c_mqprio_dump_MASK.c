#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tc_mqprio_qopt {unsigned int num_tc; int /*<<< orphan*/ * offset; int /*<<< orphan*/ * count; int /*<<< orphan*/  hw; int /*<<< orphan*/  prio_tc_map; int /*<<< orphan*/  member_0; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {unsigned int num_tx_queues; TYPE_2__* tc_to_txq; int /*<<< orphan*/  prio_tc_map; } ;
struct mqprio_sched {int flags; int /*<<< orphan*/  shaper; int /*<<< orphan*/  mode; int /*<<< orphan*/  hw_offload; } ;
struct TYPE_12__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_9__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_4__ qstats; TYPE_4__ bstats; TYPE_1__ q; int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_11__ {struct Qdisc* qdisc_sleeping; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TCA_MQPRIO_MODE ; 
 int /*<<< orphan*/  TCA_MQPRIO_SHAPER ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int TC_MQPRIO_F_MAX_RATE ; 
 int TC_MQPRIO_F_MIN_RATE ; 
 int TC_MQPRIO_F_MODE ; 
 int TC_MQPRIO_F_SHAPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mqprio_sched*,struct tc_mqprio_qopt*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (struct net_device*) ; 
 TYPE_3__* FUNC7 (struct net_device*,unsigned int) ; 
 int FUNC8 (struct sk_buff*,struct nlattr*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tc_mqprio_qopt*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlattr*) ; 
 struct net_device* FUNC12 (struct Qdisc*) ; 
 scalar_t__ FUNC13 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC14 (struct Qdisc*) ; 
 struct mqprio_sched* FUNC15 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct Qdisc *sch, struct sk_buff *skb)
{
	struct net_device *dev = FUNC12(sch);
	struct mqprio_sched *priv = FUNC15(sch);
	struct nlattr *nla = (struct nlattr *)FUNC17(skb);
	struct tc_mqprio_qopt opt = { 0 };
	struct Qdisc *qdisc;
	unsigned int ntx, tc;

	sch->q.qlen = 0;
	FUNC5(&sch->bstats, 0, sizeof(sch->bstats));
	FUNC5(&sch->qstats, 0, sizeof(sch->qstats));

	/* MQ supports lockless qdiscs. However, statistics accounting needs
	 * to account for all, none, or a mix of locked and unlocked child
	 * qdiscs. Percpu stats are added to counters in-band and locking
	 * qdisc totals are added at end.
	 */
	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		qdisc = FUNC7(dev, ntx)->qdisc_sleeping;
		FUNC18(FUNC14(qdisc));

		if (FUNC13(qdisc)) {
			__u32 qlen = FUNC16(qdisc);

			FUNC1(NULL, &sch->bstats,
						qdisc->cpu_bstats,
						&qdisc->bstats);
			FUNC2(&sch->qstats,
						qdisc->cpu_qstats,
						&qdisc->qstats, qlen);
		} else {
			sch->q.qlen		+= qdisc->q.qlen;
			sch->bstats.bytes	+= qdisc->bstats.bytes;
			sch->bstats.packets	+= qdisc->bstats.packets;
			sch->qstats.backlog	+= qdisc->qstats.backlog;
			sch->qstats.drops	+= qdisc->qstats.drops;
			sch->qstats.requeues	+= qdisc->qstats.requeues;
			sch->qstats.overlimits	+= qdisc->qstats.overlimits;
		}

		FUNC19(FUNC14(qdisc));
	}

	opt.num_tc = FUNC6(dev);
	FUNC4(opt.prio_tc_map, dev->prio_tc_map, sizeof(opt.prio_tc_map));
	opt.hw = priv->hw_offload;

	for (tc = 0; tc < FUNC6(dev); tc++) {
		opt.count[tc] = dev->tc_to_txq[tc].count;
		opt.offset[tc] = dev->tc_to_txq[tc].offset;
	}

	if (FUNC9(skb, TCA_OPTIONS, FUNC0(sizeof(opt)), &opt))
		goto nla_put_failure;

	if ((priv->flags & TC_MQPRIO_F_MODE) &&
	    FUNC10(skb, TCA_MQPRIO_MODE, priv->mode))
		goto nla_put_failure;

	if ((priv->flags & TC_MQPRIO_F_SHAPER) &&
	    FUNC10(skb, TCA_MQPRIO_SHAPER, priv->shaper))
		goto nla_put_failure;

	if ((priv->flags & TC_MQPRIO_F_MIN_RATE ||
	     priv->flags & TC_MQPRIO_F_MAX_RATE) &&
	    (FUNC3(priv, &opt, skb) != 0))
		goto nla_put_failure;

	return FUNC8(skb, nla);
nla_put_failure:
	FUNC11(skb, nla);
	return -1;
}