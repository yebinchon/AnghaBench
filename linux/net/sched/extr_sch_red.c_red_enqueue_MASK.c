#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  pdrop; int /*<<< orphan*/  forced_mark; int /*<<< orphan*/  forced_drop; int /*<<< orphan*/  prob_mark; int /*<<< orphan*/  prob_drop; } ;
struct TYPE_11__ {int /*<<< orphan*/  qavg; } ;
struct red_sched_data {TYPE_3__ stats; TYPE_4__ vars; int /*<<< orphan*/  parms; struct Qdisc* qdisc; } ;
struct TYPE_9__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_8__ {int /*<<< orphan*/  backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
#define  RED_DONT_MARK 130 
#define  RED_HARD_MARK 129 
#define  RED_PROB_MARK 128 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct red_sched_data* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (struct red_sched_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct red_sched_data*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct Qdisc *sch,
		       struct sk_buff **to_free)
{
	struct red_sched_data *q = FUNC5(sch);
	struct Qdisc *child = q->qdisc;
	int ret;

	q->vars.qavg = FUNC10(&q->parms,
				     &q->vars,
				     child->qstats.backlog);

	if (FUNC12(&q->vars))
		FUNC11(&q->vars);

	switch (FUNC9(&q->parms, &q->vars, q->vars.qavg)) {
	case RED_DONT_MARK:
		break;

	case RED_PROB_MARK:
		FUNC8(sch);
		if (!FUNC13(q) || !FUNC0(skb)) {
			q->stats.prob_drop++;
			goto congestion_drop;
		}

		q->stats.prob_mark++;
		break;

	case RED_HARD_MARK:
		FUNC8(sch);
		if (FUNC14(q) || !FUNC13(q) ||
		    !FUNC0(skb)) {
			q->stats.forced_drop++;
			goto congestion_drop;
		}

		q->stats.forced_mark++;
		break;
	}

	ret = FUNC4(skb, child, to_free);
	if (FUNC1(ret == NET_XMIT_SUCCESS)) {
		FUNC6(sch, skb);
		sch->q.qlen++;
	} else if (FUNC2(ret)) {
		q->stats.pdrop++;
		FUNC7(sch);
	}
	return ret;

congestion_drop:
	FUNC3(skb, sch, to_free);
	return NET_XMIT_CN;
}