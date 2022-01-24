#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct sk_buff {scalar_t__ truesize; } ;
struct cake_tin_data {int /*<<< orphan*/  tin_dropped; int /*<<< orphan*/  tin_backlog; int /*<<< orphan*/ * backlogs; int /*<<< orphan*/  unresponsive_flow_count; int /*<<< orphan*/  cparams; struct cake_flow* flows; } ;
struct cake_sched_data {int overflow_timeout; int rate_flags; int /*<<< orphan*/  buffer_used; struct cake_tin_data* tins; struct cake_heap_entry* overflow_heap; } ;
struct cake_heap_entry {size_t t; size_t b; } ;
struct cake_flow {int /*<<< orphan*/  dropped; int /*<<< orphan*/  cvars; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_3__ {int /*<<< orphan*/  drops; int /*<<< orphan*/  backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int CAKE_FLAG_INGRESS ; 
 int CAKE_MAX_TINS ; 
 int CAKE_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 (struct cake_sched_data*,struct cake_tin_data*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cake_sched_data*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct cake_flow*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t FUNC6 (struct sk_buff*) ; 
 struct cake_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,int,size_t) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static unsigned int FUNC10(struct Qdisc *sch, struct sk_buff **to_free)
{
	struct cake_sched_data *q = FUNC7(sch);
	ktime_t now = FUNC5();
	u32 idx = 0, tin = 0, len;
	struct cake_heap_entry qq;
	struct cake_tin_data *b;
	struct cake_flow *flow;
	struct sk_buff *skb;

	if (!q->overflow_timeout) {
		int i;
		/* Build fresh max-heap */
		for (i = CAKE_MAX_TINS * CAKE_QUEUES / 2; i >= 0; i--)
			FUNC2(q, i);
	}
	q->overflow_timeout = 65535;

	/* select longest queue for pruning */
	qq  = q->overflow_heap[0];
	tin = qq.t;
	idx = qq.b;

	b = &q->tins[tin];
	flow = &b->flows[idx];
	skb = FUNC4(flow);
	if (FUNC9(!skb)) {
		/* heap has gone wrong, rebuild it next time */
		q->overflow_timeout = 0;
		return idx + (tin << 16);
	}

	if (FUNC3(&flow->cvars, &b->cparams, now))
		b->unresponsive_flow_count++;

	len = FUNC6(skb);
	q->buffer_used      -= skb->truesize;
	b->backlogs[idx]    -= len;
	b->tin_backlog      -= len;
	sch->qstats.backlog -= len;
	FUNC8(sch, 1, len);

	flow->dropped++;
	b->tin_dropped++;
	sch->qstats.drops++;

	if (q->rate_flags & CAKE_FLAG_INGRESS)
		FUNC1(q, b, skb, now, true);

	FUNC0(skb, to_free);
	sch->q.qlen--;

	FUNC2(q, 0);

	return idx + (tin << 16);
}