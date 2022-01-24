#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct sk_buff {size_t tc_index; } ;
struct TYPE_8__ {int /*<<< orphan*/  pdrop; int /*<<< orphan*/  forced_mark; int /*<<< orphan*/  forced_drop; int /*<<< orphan*/  prob_mark; int /*<<< orphan*/  prob_drop; } ;
struct TYPE_9__ {unsigned long qavg; } ;
struct gred_sched_data {scalar_t__ prio; scalar_t__ limit; TYPE_2__ stats; int /*<<< orphan*/  backlog; TYPE_3__ vars; int /*<<< orphan*/  parms; int /*<<< orphan*/  bytesin; int /*<<< orphan*/  packetsin; } ;
struct gred_sched {size_t DPs; size_t def; struct gred_sched_data** tab; } ;
struct TYPE_7__ {scalar_t__ backlog; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ qstats; } ;

/* Variables and functions */
 size_t GRED_VQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int NET_XMIT_CN ; 
#define  RED_DONT_MARK 130 
#define  RED_HARD_MARK 129 
#define  RED_PROB_MARK 128 
 scalar_t__ FUNC1 (struct gred_sched*,struct gred_sched_data*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gred_sched*,struct gred_sched_data*) ; 
 scalar_t__ FUNC3 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC4 (struct gred_sched*,struct gred_sched_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct gred_sched_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct gred_sched_data*) ; 
 scalar_t__ FUNC7 (struct gred_sched*) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC10 (struct sk_buff*,struct Qdisc*) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 struct gred_sched* FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*) ; 
 int FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,unsigned long) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (TYPE_3__*) ; 
 size_t FUNC18 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *skb, struct Qdisc *sch,
			struct sk_buff **to_free)
{
	struct gred_sched_data *q = NULL;
	struct gred_sched *t = FUNC12(sch);
	unsigned long qavg = 0;
	u16 dp = FUNC18(skb);

	if (dp >= t->DPs || (q = t->tab[dp]) == NULL) {
		dp = t->def;

		q = t->tab[dp];
		if (!q) {
			/* Pass through packets not assigned to a DP
			 * if no default DP has been configured. This
			 * allows for DP flows to be left untouched.
			 */
			if (FUNC8(sch->qstats.backlog + FUNC11(skb) <=
					sch->limit))
				return FUNC10(skb, sch);
			else
				goto drop;
		}

		/* fix tc_index? --could be controversial but needed for
		   requeueing */
		skb->tc_index = (skb->tc_index & ~GRED_VQ_MASK) | dp;
	}

	/* sum up all the qaves of prios < ours to get the new qave */
	if (!FUNC7(t) && FUNC3(t)) {
		int i;

		for (i = 0; i < t->DPs; i++) {
			if (t->tab[i] && t->tab[i]->prio < q->prio &&
			    !FUNC17(&t->tab[i]->vars))
				qavg += t->tab[i]->vars.qavg;
		}

	}

	q->packetsin++;
	q->bytesin += FUNC11(skb);

	if (FUNC7(t))
		FUNC2(t, q);

	q->vars.qavg = FUNC15(&q->parms,
				     &q->vars,
				     FUNC1(t, q, sch));

	if (FUNC17(&q->vars))
		FUNC16(&q->vars);

	if (FUNC7(t))
		FUNC4(t, q);

	switch (FUNC14(&q->parms, &q->vars, q->vars.qavg + qavg)) {
	case RED_DONT_MARK:
		break;

	case RED_PROB_MARK:
		FUNC13(sch);
		if (!FUNC5(q) || !FUNC0(skb)) {
			q->stats.prob_drop++;
			goto congestion_drop;
		}

		q->stats.prob_mark++;
		break;

	case RED_HARD_MARK:
		FUNC13(sch);
		if (FUNC6(q) || !FUNC5(q) ||
		    !FUNC0(skb)) {
			q->stats.forced_drop++;
			goto congestion_drop;
		}
		q->stats.forced_mark++;
		break;
	}

	if (FUNC1(t, q, sch) + FUNC11(skb) <= q->limit) {
		q->backlog += FUNC11(skb);
		return FUNC10(skb, sch);
	}

	q->stats.pdrop++;
drop:
	return FUNC9(skb, sch, to_free);

congestion_drop:
	FUNC9(skb, sch, to_free);
	return NET_XMIT_CN;
}