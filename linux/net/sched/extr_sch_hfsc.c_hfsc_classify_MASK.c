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
struct hfsc_class {scalar_t__ level; int /*<<< orphan*/  filter_list; } ;
struct hfsc_sched {int /*<<< orphan*/  defcls; struct hfsc_class root; } ;
struct Qdisc {int handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct hfsc_class* FUNC2 (int,struct Qdisc*) ; 
 struct hfsc_sched* FUNC3 (struct Qdisc*) ; 
 struct tcf_proto* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static struct hfsc_class *
FUNC6(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
	struct hfsc_sched *q = FUNC3(sch);
	struct hfsc_class *head, *cl;
	struct tcf_result res;
	struct tcf_proto *tcf;
	int result;

	if (FUNC0(skb->priority ^ sch->handle) == 0 &&
	    (cl = FUNC2(skb->priority, sch)) != NULL)
		if (cl->level == 0)
			return cl;

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	head = &q->root;
	tcf = FUNC4(q->root.filter_list);
	while (tcf && (result = FUNC5(skb, tcf, &res, false)) >= 0) {
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
		cl = (struct hfsc_class *)res.class;
		if (!cl) {
			cl = FUNC2(res.classid, sch);
			if (!cl)
				break; /* filter selected invalid classid */
			if (cl->level >= head->level)
				break; /* filter may only point downwards */
		}

		if (cl->level == 0)
			return cl; /* hit leaf class */

		/* apply inner filter chain */
		tcf = FUNC4(cl->filter_list);
		head = cl;
	}

	/* classification failed, try default class */
	cl = FUNC2(FUNC1(FUNC0(sch->handle), q->defcls), sch);
	if (cl == NULL || cl->level > 0)
		return NULL;

	return cl;
}