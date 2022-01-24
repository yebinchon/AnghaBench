#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct sk_buff {int dummy; } ;
struct qfq_sched {int iwsum; scalar_t__ V; struct qfq_aggregate* in_serv_agg; } ;
struct qfq_class {int dummy; } ;
struct qfq_aggregate {unsigned int budget; unsigned int initial_budget; unsigned int budgetmax; scalar_t__ F; int /*<<< orphan*/  active; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qfq_aggregate*,struct qfq_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_aggregate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 struct qfq_sched* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 struct qfq_aggregate* FUNC7 (struct qfq_sched*) ; 
 struct sk_buff* FUNC8 (struct qfq_aggregate*,struct qfq_class**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct qfq_sched*,struct qfq_aggregate*) ; 
 int /*<<< orphan*/  FUNC10 (struct qfq_sched*,struct qfq_aggregate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  requeue ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct Qdisc *sch)
{
	struct qfq_sched *q = FUNC5(sch);
	struct qfq_aggregate *in_serv_agg = q->in_serv_agg;
	struct qfq_class *cl;
	struct sk_buff *skb = NULL;
	/* next-packet len, 0 means no more active classes in in-service agg */
	unsigned int len = 0;

	if (in_serv_agg == NULL)
		return NULL;

	if (!FUNC2(&in_serv_agg->active))
		skb = FUNC8(in_serv_agg, &cl, &len);

	/*
	 * If there are no active classes in the in-service aggregate,
	 * or if the aggregate has not enough budget to serve its next
	 * class, then choose the next aggregate to serve.
	 */
	if (len == 0 || in_serv_agg->budget < len) {
		FUNC1(in_serv_agg);

		/* recharge the budget of the aggregate */
		in_serv_agg->initial_budget = in_serv_agg->budget =
			in_serv_agg->budgetmax;

		if (!FUNC2(&in_serv_agg->active)) {
			/*
			 * Still active: reschedule for
			 * service. Possible optimization: if no other
			 * aggregate is active, then there is no point
			 * in rescheduling this aggregate, and we can
			 * just keep it as the in-service one. This
			 * should be however a corner case, and to
			 * handle it, we would need to maintain an
			 * extra num_active_aggs field.
			*/
			FUNC10(q, in_serv_agg, requeue);
			FUNC9(q, in_serv_agg);
		} else if (sch->q.qlen == 0) { /* no aggregate to serve */
			q->in_serv_agg = NULL;
			return NULL;
		}

		/*
		 * If we get here, there are other aggregates queued:
		 * choose the new aggregate to serve.
		 */
		in_serv_agg = q->in_serv_agg = FUNC7(q);
		skb = FUNC8(in_serv_agg, &cl, &len);
	}
	if (!skb)
		return NULL;

	FUNC6(sch, skb);
	sch->q.qlen--;
	FUNC4(sch, skb);

	FUNC0(in_serv_agg, cl, len);
	/* If lmax is lowered, through qfq_change_class, for a class
	 * owning pending packets with larger size than the new value
	 * of lmax, then the following condition may hold.
	 */
	if (FUNC11(in_serv_agg->budget < len))
		in_serv_agg->budget = 0;
	else
		in_serv_agg->budget -= len;

	q->V += (u64)len * q->iwsum;
	FUNC3("qfq dequeue: len %u F %lld now %lld\n",
		 len, (unsigned long long) in_serv_agg->F,
		 (unsigned long long) q->V);

	return skb;
}