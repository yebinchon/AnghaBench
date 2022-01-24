#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct TYPE_10__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ qlen; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_3__ bstats; TYPE_1__ q; int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_9__ {struct Qdisc* qdisc_sleeping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct Qdisc*) ; 
 TYPE_2__* FUNC4 (struct net_device*,unsigned int) ; 
 struct net_device* FUNC5 (struct Qdisc*) ; 
 scalar_t__ FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct sk_buff *skb)
{
	struct net_device *dev = FUNC5(sch);
	struct Qdisc *qdisc;
	unsigned int ntx;
	__u32 qlen = 0;

	sch->q.qlen = 0;
	FUNC2(&sch->bstats, 0, sizeof(sch->bstats));
	FUNC2(&sch->qstats, 0, sizeof(sch->qstats));

	/* MQ supports lockless qdiscs. However, statistics accounting needs
	 * to account for all, none, or a mix of locked and unlocked child
	 * qdiscs. Percpu stats are added to counters in-band and locking
	 * qdisc totals are added at end.
	 */
	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		qdisc = FUNC4(dev, ntx)->qdisc_sleeping;
		FUNC9(FUNC7(qdisc));

		if (FUNC6(qdisc)) {
			qlen = FUNC8(qdisc);
			FUNC0(NULL, &sch->bstats,
						qdisc->cpu_bstats,
						&qdisc->bstats);
			FUNC1(&sch->qstats,
						qdisc->cpu_qstats,
						&qdisc->qstats, qlen);
		} else {
			sch->q.qlen		+= qdisc->q.qlen;
			sch->bstats.bytes	+= qdisc->bstats.bytes;
			sch->bstats.packets	+= qdisc->bstats.packets;
			sch->qstats.qlen	+= qdisc->qstats.qlen;
			sch->qstats.backlog	+= qdisc->qstats.backlog;
			sch->qstats.drops	+= qdisc->qstats.drops;
			sch->qstats.requeues	+= qdisc->qstats.requeues;
			sch->qstats.overlimits	+= qdisc->qstats.overlimits;
		}

		FUNC10(FUNC7(qdisc));
	}

	return FUNC3(sch);
}