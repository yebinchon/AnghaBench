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
struct sk_buff {scalar_t__ len; } ;
struct plug_sched_data {scalar_t__ limit; int /*<<< orphan*/  pkts_current_epoch; int /*<<< orphan*/  unplug_indefinite; } ;
struct TYPE_2__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*) ; 
 struct plug_sched_data* FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct Qdisc *sch,
			struct sk_buff **to_free)
{
	struct plug_sched_data *q = FUNC3(sch);

	if (FUNC0(sch->qstats.backlog + skb->len <= q->limit)) {
		if (!q->unplug_indefinite)
			q->pkts_current_epoch++;
		return FUNC2(skb, sch);
	}

	return FUNC1(skb, sch, to_free);
}