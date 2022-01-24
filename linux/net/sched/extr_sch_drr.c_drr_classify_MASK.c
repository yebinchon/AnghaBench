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
struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int priority; } ;
struct drr_sched {int /*<<< orphan*/  filter_list; } ;
struct drr_class {int dummy; } ;
struct Qdisc {int handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 scalar_t__ FUNC0 (int) ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct drr_class* FUNC1 (struct Qdisc*,int) ; 
 struct drr_sched* FUNC2 (struct Qdisc*) ; 
 struct tcf_proto* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static struct drr_class *FUNC5(struct sk_buff *skb, struct Qdisc *sch,
				      int *qerr)
{
	struct drr_sched *q = FUNC2(sch);
	struct drr_class *cl;
	struct tcf_result res;
	struct tcf_proto *fl;
	int result;

	if (FUNC0(skb->priority ^ sch->handle) == 0) {
		cl = FUNC1(sch, skb->priority);
		if (cl != NULL)
			return cl;
	}

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	fl = FUNC3(q->filter_list);
	result = FUNC4(skb, fl, &res, false);
	if (result >= 0) {
#ifdef CONFIG_NET_CLS_ACT
		switch (result) {
		case TC_ACT_QUEUED:
		case TC_ACT_STOLEN:
		case TC_ACT_TRAP:
			*qerr = NET_XMIT_SUCCESS | __NET_XMIT_STOLEN;
			/* fall through */
		case TC_ACT_SHOT:
			return NULL;
		}
#endif
		cl = (struct drr_class *)res.class;
		if (cl == NULL)
			cl = FUNC1(sch, res.classid);
		return cl;
	}
	return NULL;
}