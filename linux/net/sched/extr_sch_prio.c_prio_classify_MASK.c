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
struct tcf_result {size_t classid; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {size_t priority; } ;
struct prio_sched_data {size_t* prio2band; size_t bands; struct Qdisc** queues; int /*<<< orphan*/  filter_list; } ;
struct Qdisc {scalar_t__ handle; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
#define  TC_ACT_QUEUED 131 
#define  TC_ACT_SHOT 130 
#define  TC_ACT_STOLEN 129 
#define  TC_ACT_TRAP 128 
 scalar_t__ FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 
 size_t TC_PRIO_MAX ; 
 int __NET_XMIT_BYPASS ; 
 int __NET_XMIT_STOLEN ; 
 struct prio_sched_data* FUNC2 (struct Qdisc*) ; 
 struct tcf_proto* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct tcf_proto*,struct tcf_result*,int) ; 

__attribute__((used)) static struct Qdisc *
FUNC5(struct sk_buff *skb, struct Qdisc *sch, int *qerr)
{
	struct prio_sched_data *q = FUNC2(sch);
	u32 band = skb->priority;
	struct tcf_result res;
	struct tcf_proto *fl;
	int err;

	*qerr = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;
	if (FUNC0(skb->priority) != sch->handle) {
		fl = FUNC3(q->filter_list);
		err = FUNC4(skb, fl, &res, false);
#ifdef CONFIG_NET_CLS_ACT
		switch (err) {
		case TC_ACT_STOLEN:
		case TC_ACT_QUEUED:
		case TC_ACT_TRAP:
			*qerr = NET_XMIT_SUCCESS | __NET_XMIT_STOLEN;
			/* fall through */
		case TC_ACT_SHOT:
			return NULL;
		}
#endif
		if (!fl || err < 0) {
			if (FUNC0(band))
				band = 0;
			return q->queues[q->prio2band[band & TC_PRIO_MAX]];
		}
		band = res.classid;
	}
	band = FUNC1(band) - 1;
	if (band >= q->bands)
		return q->queues[q->prio2band[0]];

	return q->queues[band];
}