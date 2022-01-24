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
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 int __NET_XMIT_BYPASS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff**) ; 
 struct Qdisc* FUNC1 (struct sk_buff*,struct Qdisc*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, struct Qdisc *sch,
	       struct sk_buff **to_free)
{
	struct Qdisc *qdisc;
	int ret;

	qdisc = FUNC1(skb, sch, &ret);
#ifdef CONFIG_NET_CLS_ACT
	if (qdisc == NULL) {

		if (ret & __NET_XMIT_BYPASS)
			qdisc_qstats_drop(sch);
		__qdisc_drop(skb, to_free);
		return ret;
	}
#endif

	ret = FUNC3(skb, qdisc, to_free);
	if (ret == NET_XMIT_SUCCESS) {
		sch->q.qlen++;
		return NET_XMIT_SUCCESS;
	}
	if (FUNC2(ret))
		FUNC4(sch);
	return ret;
}