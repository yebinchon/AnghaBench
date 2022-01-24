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
struct sock {int /*<<< orphan*/  sk_pacing_status; } ;
struct sk_buff {struct sock* sk; } ;
struct fq_flow {scalar_t__ qlen; int /*<<< orphan*/  credit; scalar_t__ age; } ;
struct fq_sched_data {scalar_t__ flow_plimit; int /*<<< orphan*/  stat_internal_packets; struct fq_flow internal; int /*<<< orphan*/  inactive_flows; scalar_t__ rate_enable; int /*<<< orphan*/  quantum; scalar_t__ flow_refill_delay; int /*<<< orphan*/  new_flows; int /*<<< orphan*/  stat_flows_plimit; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ q; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 scalar_t__ SK_PACING_FQ ; 
 int /*<<< orphan*/  FUNC0 (struct fq_flow*,struct sk_buff*) ; 
 struct fq_flow* FUNC1 (struct sk_buff*,struct fq_sched_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fq_flow*) ; 
 scalar_t__ FUNC3 (struct fq_flow*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct fq_sched_data* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  u32 ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct Qdisc *sch,
		      struct sk_buff **to_free)
{
	struct fq_sched_data *q = FUNC6(sch);
	struct fq_flow *f;

	if (FUNC11(sch->q.qlen >= sch->limit))
		return FUNC5(skb, sch, to_free);

	f = FUNC1(skb, q);
	if (FUNC11(f->qlen >= q->flow_plimit && f != &q->internal)) {
		q->stat_flows_plimit++;
		return FUNC5(skb, sch, to_free);
	}

	f->qlen++;
	FUNC7(sch, skb);
	if (FUNC3(f)) {
		struct sock *sk = skb->sk;

		FUNC2(&q->new_flows, f);
		if (FUNC10(jiffies, f->age + q->flow_refill_delay))
			f->credit = FUNC4(u32, f->credit, q->quantum);
		if (sk && q->rate_enable) {
			if (FUNC11(FUNC8(&sk->sk_pacing_status) !=
				     SK_PACING_FQ))
				FUNC9(&sk->sk_pacing_status,
						  SK_PACING_FQ);
		}
		q->inactive_flows--;
	}

	/* Note: this overwrites f->age */
	FUNC0(f, skb);

	if (FUNC11(f == &q->internal)) {
		q->stat_internal_packets++;
	}
	sch->q.qlen++;

	return NET_XMIT_SUCCESS;
}