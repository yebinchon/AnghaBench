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
typedef  size_t u32 ;
struct tcf_result {size_t classid; scalar_t__ class; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {size_t priority; } ;
struct cbq_class {scalar_t__ level; struct cbq_class** defaults; int /*<<< orphan*/  filter_list; } ;
struct cbq_sched_data {struct cbq_class link; } ;
struct Qdisc {size_t handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 132 
#define  TC_ACT_RECLASSIFY 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 scalar_t__ FUNC0 (size_t) ; 
 size_t TC_PRIO_BESTEFFORT ; 
 size_t TC_PRIO_MAX ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct cbq_class* FUNC1 (struct cbq_sched_data*,size_t) ; 
 struct cbq_class* FUNC2 (struct sk_buff*,struct cbq_class*) ; 
 struct cbq_sched_data* FUNC3 (struct Qdisc*) ; 
 struct tcf_proto* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static struct cbq_class *
FUNC6(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
	struct cbq_sched_data *q = FUNC3(sch);
	struct cbq_class *head = &q->link;
	struct cbq_class **defmap;
	struct cbq_class *cl = NULL;
	u32 prio = skb->priority;
	struct tcf_proto *fl;
	struct tcf_result res;

	/*
	 *  Step 1. If skb->priority points to one of our classes, use it.
	 */
	if (FUNC0(prio ^ sch->handle) == 0 &&
	    (cl = FUNC1(q, prio)) != NULL)
		return cl;

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	for (;;) {
		int result = 0;
		defmap = head->defaults;

		fl = FUNC4(head->filter_list);
		/*
		 * Step 2+n. Apply classifier.
		 */
		result = FUNC5(skb, fl, &res, true);
		if (!fl || result < 0)
			goto fallback;

		cl = (void *)res.class;
		if (!cl) {
			if (FUNC0(res.classid))
				cl = FUNC1(q, res.classid);
			else if ((cl = defmap[res.classid & TC_PRIO_MAX]) == NULL)
				cl = defmap[TC_PRIO_BESTEFFORT];

			if (cl == NULL)
				goto fallback;
		}
		if (cl->level >= head->level)
			goto fallback;
#ifdef CONFIG_NET_CLS_ACT
		switch (result) {
		case TC_ACT_QUEUED:
		case TC_ACT_STOLEN:
		case TC_ACT_TRAP:
			*qerr = NET_XMIT_SUCCESS | __NET_XMIT_STOLEN;
			/* fall through */
		case TC_ACT_SHOT:
			return NULL;
		case TC_ACT_RECLASSIFY:
			return cbq_reclassify(skb, cl);
		}
#endif
		if (cl->level == 0)
			return cl;

		/*
		 * Step 3+n. If classifier selected a link sharing class,
		 *	   apply agency specific classifier.
		 *	   Repeat this procdure until we hit a leaf node.
		 */
		head = cl;
	}

fallback:
	cl = head;

	/*
	 * Step 4. No success...
	 */
	if (FUNC0(prio) == 0 &&
	    !(cl = head->defaults[prio & TC_PRIO_MAX]) &&
	    !(cl = head->defaults[TC_PRIO_BESTEFFORT]))
		return head;

	return cl;
}