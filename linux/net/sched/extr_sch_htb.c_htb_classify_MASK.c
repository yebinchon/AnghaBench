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
struct tcf_result {scalar_t__ classid; scalar_t__ class; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {scalar_t__ priority; } ;
struct htb_sched {int /*<<< orphan*/  defcls; int /*<<< orphan*/  filter_list; } ;
struct htb_class {scalar_t__ level; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;

/* Variables and functions */
 struct htb_class* HTB_DIRECT ; 
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct htb_class* FUNC2 (scalar_t__,struct Qdisc*) ; 
 struct htb_sched* FUNC3 (struct Qdisc*) ; 
 struct tcf_proto* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static struct htb_class *FUNC6(struct sk_buff *skb, struct Qdisc *sch,
				      int *qerr)
{
	struct htb_sched *q = FUNC3(sch);
	struct htb_class *cl;
	struct tcf_result res;
	struct tcf_proto *tcf;
	int result;

	/* allow to select class by setting skb->priority to valid classid;
	 * note that nfmark can be used too by attaching filter fw with no
	 * rules in it
	 */
	if (skb->priority == sch->handle)
		return HTB_DIRECT;	/* X:0 (direct flow) selected */
	cl = FUNC2(skb->priority, sch);
	if (cl) {
		if (cl->level == 0)
			return cl;
		/* Start with inner filter chain if a non-leaf class is selected */
		tcf = FUNC4(cl->filter_list);
	} else {
		tcf = FUNC4(q->filter_list);
	}

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
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
		cl = (void *)res.class;
		if (!cl) {
			if (res.classid == sch->handle)
				return HTB_DIRECT;	/* X:0 (direct flow) */
			cl = FUNC2(res.classid, sch);
			if (!cl)
				break;	/* filter selected invalid classid */
		}
		if (!cl->level)
			return cl;	/* we hit leaf; return it */

		/* we have got inner class; apply inner filter chain */
		tcf = FUNC4(cl->filter_list);
	}
	/* classification failed; try to use default class */
	cl = FUNC2(FUNC1(FUNC0(sch->handle), q->defcls), sch);
	if (!cl || cl->level)
		return HTB_DIRECT;	/* bad default .. this is safe bet */
	return cl;
}