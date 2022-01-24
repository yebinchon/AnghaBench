#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  rbnode; int /*<<< orphan*/  tstamp; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;
struct TYPE_4__ {struct rb_node* rb_node; } ;
struct TYPE_6__ {TYPE_1__ rb_root; } ;
struct etf_sched_data {TYPE_3__ head; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  SO_EE_CODE_TXTIME_INVALID_PARAM ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct etf_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 struct sk_buff* FUNC7 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *nskb, struct Qdisc *sch,
				      struct sk_buff **to_free)
{
	struct etf_sched_data *q = FUNC3(sch);
	struct rb_node **p = &q->head.rb_root.rb_node, *parent = NULL;
	ktime_t txtime = nskb->tstamp;
	bool leftmost = true;

	if (!FUNC0(sch, nskb)) {
		FUNC8(nskb, EINVAL,
				  SO_EE_CODE_TXTIME_INVALID_PARAM);
		return FUNC2(nskb, sch, to_free);
	}

	while (*p) {
		struct sk_buff *skb;

		parent = *p;
		skb = FUNC7(parent);
		if (FUNC1(txtime, skb->tstamp) >= 0) {
			p = &parent->rb_right;
			leftmost = false;
		} else {
			p = &parent->rb_left;
		}
	}
	FUNC6(&nskb->rbnode, parent, p);
	FUNC5(&nskb->rbnode, &q->head, leftmost);

	FUNC4(sch, nskb);
	sch->q.qlen++;

	/* Now we may need to re-arm the qdisc watchdog for the next packet. */
	FUNC9(sch);

	return NET_XMIT_SUCCESS;
}