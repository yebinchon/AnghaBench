#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct codel_sched_data {int /*<<< orphan*/  drop_overlimit; } ;
struct Qdisc {scalar_t__ limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 struct codel_sched_data* FUNC4 (struct Qdisc*) ; 
 scalar_t__ FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct Qdisc *sch,
			       struct sk_buff **to_free)
{
	struct codel_sched_data *q;

	if (FUNC1(FUNC5(sch) < sch->limit)) {
		FUNC0(skb);
		return FUNC3(skb, sch);
	}
	q = FUNC4(sch);
	q->drop_overlimit++;
	return FUNC2(skb, sch, to_free);
}