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
struct taprio_sched {int /*<<< orphan*/  flags; struct Qdisc** qdiscs; } ;
struct sk_buff {int /*<<< orphan*/  tstamp; scalar_t__ sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_TXTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct Qdisc*) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct taprio_sched* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct Qdisc *sch,
			  struct sk_buff **to_free)
{
	struct taprio_sched *q = FUNC5(sch);
	struct Qdisc *child;
	int queue;

	queue = FUNC7(skb);

	child = q->qdiscs[queue];
	if (FUNC9(!child))
		return FUNC3(skb, sch, to_free);

	if (skb->sk && FUNC8(skb->sk, SOCK_TXTIME)) {
		if (!FUNC2(skb, sch))
			return FUNC3(skb, sch, to_free);
	} else if (FUNC0(q->flags)) {
		skb->tstamp = FUNC1(skb, sch);
		if (!skb->tstamp)
			return FUNC3(skb, sch, to_free);
	}

	FUNC6(sch, skb);
	sch->q.qlen++;

	return FUNC4(skb, child, to_free);
}