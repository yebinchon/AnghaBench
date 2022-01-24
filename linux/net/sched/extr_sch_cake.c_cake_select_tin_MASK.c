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
typedef  size_t u8 ;
typedef  int u32 ;
struct sk_buff {int mark; int /*<<< orphan*/  priority; } ;
struct cake_tin_data {int dummy; } ;
struct cake_sched_data {int rate_flags; int fwmark_mask; int fwmark_shft; scalar_t__ tin_mode; int tin_cnt; int* tin_order; int* tin_index; struct cake_tin_data* tins; } ;
struct Qdisc {scalar_t__ handle; } ;

/* Variables and functions */
 scalar_t__ CAKE_DIFFSERV_BESTEFFORT ; 
 int CAKE_FLAG_WASH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct sk_buff*,int) ; 
 struct cake_sched_data* FUNC3 (struct Qdisc*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct cake_tin_data *FUNC5(struct Qdisc *sch,
					     struct sk_buff *skb)
{
	struct cake_sched_data *q = FUNC3(sch);
	u32 tin, mark;
	u8 dscp;

	/* Tin selection: Default to diffserv-based selection, allow overriding
	 * using firewall marks or skb->priority.
	 */
	dscp = FUNC2(skb,
				    q->rate_flags & CAKE_FLAG_WASH);
	mark = (skb->mark & q->fwmark_mask) >> q->fwmark_shft;

	if (q->tin_mode == CAKE_DIFFSERV_BESTEFFORT)
		tin = 0;

	else if (mark && mark <= q->tin_cnt)
		tin = q->tin_order[mark - 1];

	else if (FUNC0(skb->priority) == sch->handle &&
		 FUNC1(skb->priority) > 0 &&
		 FUNC1(skb->priority) <= q->tin_cnt)
		tin = q->tin_order[FUNC1(skb->priority) - 1];

	else {
		tin = q->tin_index[dscp];

		if (FUNC4(tin >= q->tin_cnt))
			tin = 0;
	}

	return &q->tins[tin];
}