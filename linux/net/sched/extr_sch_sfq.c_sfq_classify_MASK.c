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
struct tcf_result {int /*<<< orphan*/  classid; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct sfq_sched_data {scalar_t__ divisor; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct sfq_sched_data* FUNC2 (struct Qdisc*) ; 
 struct tcf_proto* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sfq_sched_data*,struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static unsigned int FUNC6(struct sk_buff *skb, struct Qdisc *sch,
				 int *qerr)
{
	struct sfq_sched_data *q = FUNC2(sch);
	struct tcf_result res;
	struct tcf_proto *fl;
	int result;

	if (FUNC0(skb->priority) == sch->handle &&
	    FUNC1(skb->priority) > 0 &&
	    FUNC1(skb->priority) <= q->divisor)
		return FUNC1(skb->priority);

	fl = FUNC3(q->filter_list);
	if (!fl)
		return FUNC4(q, skb) + 1;

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	result = FUNC5(skb, fl, &res, false);
	if (result >= 0) {
#ifdef CONFIG_NET_CLS_ACT
		switch (result) {
		case TC_ACT_STOLEN:
		case TC_ACT_QUEUED:
		case TC_ACT_TRAP:
			*qerr = NET_XMIT_SUCCESS | __NET_XMIT_STOLEN;
			/* fall through */
		case TC_ACT_SHOT:
			return 0;
		}
#endif
		if (FUNC1(res.classid) <= q->divisor)
			return FUNC1(res.classid);
	}
	return 0;
}