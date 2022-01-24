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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {unsigned int backlog; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {scalar_t__ limit; TYPE_1__ qstats; TYPE_2__ q; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,TYPE_2__*,struct sk_buff**) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct Qdisc *sch,
			      struct sk_buff **to_free)
{
	unsigned int prev_backlog;

	if (FUNC1(sch->q.qlen < sch->limit))
		return FUNC2(skb, sch);

	prev_backlog = sch->qstats.backlog;
	/* queue full, remove one skb to fulfill the limit */
	FUNC0(sch, &sch->q, to_free);
	FUNC3(sch);
	FUNC2(skb, sch);

	FUNC4(sch, 0, prev_backlog - sch->qstats.backlog);
	return NET_XMIT_CN;
}