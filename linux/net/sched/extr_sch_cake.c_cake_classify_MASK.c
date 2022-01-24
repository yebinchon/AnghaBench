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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct tcf_result {int /*<<< orphan*/  classid; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cake_tin_data {int dummy; } ;
struct cake_sched_data {int /*<<< orphan*/  filter_list; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int CAKE_QUEUES ; 
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 scalar_t__ FUNC2 (struct cake_tin_data*,struct sk_buff*,int,int,int) ; 
 struct cake_tin_data* FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 struct cake_sched_data* FUNC4 (struct Qdisc*) ; 
 struct tcf_proto* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static u32 FUNC7(struct Qdisc *sch, struct cake_tin_data **t,
			 struct sk_buff *skb, int flow_mode, int *qerr)
{
	struct cake_sched_data *q = FUNC4(sch);
	struct tcf_proto *filter;
	struct tcf_result res;
	u16 flow = 0, host = 0;
	int result;

	filter = FUNC5(q->filter_list);
	if (!filter)
		goto hash;

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	result = FUNC6(skb, filter, &res, false);

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
		if (FUNC1(res.classid) <= CAKE_QUEUES)
			flow = FUNC1(res.classid);
		if (FUNC0(res.classid) <= (CAKE_QUEUES << 16))
			host = FUNC0(res.classid) >> 16;
	}
hash:
	*t = FUNC3(sch, skb);
	return FUNC2(*t, skb, flow_mode, flow, host) + 1;
}