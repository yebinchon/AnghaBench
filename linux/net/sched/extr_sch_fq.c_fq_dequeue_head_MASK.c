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
struct sk_buff {int dummy; } ;
struct fq_flow {int /*<<< orphan*/  qlen; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct fq_flow*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct fq_flow*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct Qdisc *sch, struct fq_flow *flow)
{
	struct sk_buff *skb = FUNC1(flow);

	if (skb) {
		FUNC0(sch, flow, skb);
		FUNC3(skb);
		flow->qlen--;
		FUNC2(sch, skb);
		sch->q.qlen--;
	}
	return skb;
}