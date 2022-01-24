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
struct tbf_sched_data {unsigned int max_size; int /*<<< orphan*/  qdisc; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_3__ {unsigned int backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,struct sk_buff**) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 struct tbf_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct Qdisc *sch,
		       struct sk_buff **to_free)
{
	struct tbf_sched_data *q = FUNC4(sch);
	unsigned int len = FUNC3(skb);
	int ret;

	if (FUNC3(skb) > q->max_size) {
		if (FUNC7(skb) &&
		    FUNC6(skb, q->max_size))
			return FUNC8(skb, sch, to_free);
		return FUNC1(skb, sch, to_free);
	}
	ret = FUNC2(skb, q->qdisc, to_free);
	if (ret != NET_XMIT_SUCCESS) {
		if (FUNC0(ret))
			FUNC5(sch);
		return ret;
	}

	sch->qstats.backlog += len;
	sch->q.qlen++;
	return NET_XMIT_SUCCESS;
}