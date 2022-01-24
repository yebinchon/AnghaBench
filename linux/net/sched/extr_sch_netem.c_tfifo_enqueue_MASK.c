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
typedef  scalar_t__ u64 ;
struct sk_buff {int /*<<< orphan*/  rbnode; struct sk_buff* next; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;
struct TYPE_5__ {struct rb_node* rb_node; } ;
struct netem_sched_data {TYPE_2__ t_root; struct sk_buff* t_tail; struct sk_buff* t_head; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
struct TYPE_6__ {scalar_t__ time_to_send; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 struct netem_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 struct sk_buff* FUNC4 (struct rb_node*) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *nskb, struct Qdisc *sch)
{
	struct netem_sched_data *q = FUNC1(sch);
	u64 tnext = FUNC0(nskb)->time_to_send;

	if (!q->t_tail || tnext >= FUNC0(q->t_tail)->time_to_send) {
		if (q->t_tail)
			q->t_tail->next = nskb;
		else
			q->t_head = nskb;
		q->t_tail = nskb;
	} else {
		struct rb_node **p = &q->t_root.rb_node, *parent = NULL;

		while (*p) {
			struct sk_buff *skb;

			parent = *p;
			skb = FUNC4(parent);
			if (tnext >= FUNC0(skb)->time_to_send)
				p = &parent->rb_right;
			else
				p = &parent->rb_left;
		}
		FUNC3(&nskb->rbnode, parent, p);
		FUNC2(&nskb->rbnode, &q->t_root);
	}
	sch->q.qlen++;
}