#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_6__ {int prob; scalar_t__ accu_prob_overflows; scalar_t__ accu_prob; } ;
struct TYPE_5__ {scalar_t__ maxq; int /*<<< orphan*/  dropped; int /*<<< orphan*/  packets_in; int /*<<< orphan*/  ecn_mark; int /*<<< orphan*/  overlimit; } ;
struct TYPE_4__ {scalar_t__ ecn; } ;
struct pie_sched_data {TYPE_3__ vars; TYPE_2__ stats; TYPE_1__ params; } ;
struct Qdisc {scalar_t__ limit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int MAX_PROB ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 struct pie_sched_data* FUNC4 (struct Qdisc*) ; 
 scalar_t__ FUNC5 (struct Qdisc*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct Qdisc *sch,
			     struct sk_buff **to_free)
{
	struct pie_sched_data *q = FUNC4(sch);
	bool enqueue = false;

	if (FUNC6(FUNC5(sch) >= sch->limit)) {
		q->stats.overlimit++;
		goto out;
	}

	if (!FUNC1(sch, skb->len)) {
		enqueue = true;
	} else if (q->params.ecn && (q->vars.prob <= MAX_PROB / 10) &&
		   FUNC0(skb)) {
		/* If packet is ecn capable, mark it if drop probability
		 * is lower than 10%, else drop it.
		 */
		q->stats.ecn_mark++;
		enqueue = true;
	}

	/* we can enqueue the packet */
	if (enqueue) {
		q->stats.packets_in++;
		if (FUNC5(sch) > q->stats.maxq)
			q->stats.maxq = FUNC5(sch);

		return FUNC3(skb, sch);
	}

out:
	q->stats.dropped++;
	q->vars.accu_prob = 0;
	q->vars.accu_prob_overflows = 0;
	return FUNC2(skb, sch, to_free);
}