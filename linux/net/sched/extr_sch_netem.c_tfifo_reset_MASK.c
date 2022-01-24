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
struct sk_buff {int /*<<< orphan*/  rbnode; } ;
struct rb_node {int dummy; } ;
struct netem_sched_data {struct sk_buff* t_tail; struct sk_buff* t_head; int /*<<< orphan*/  t_root; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct netem_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC2 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC3 (struct rb_node*) ; 
 struct sk_buff* FUNC4 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC6(struct Qdisc *sch)
{
	struct netem_sched_data *q = FUNC0(sch);
	struct rb_node *p = FUNC2(&q->t_root);

	while (p) {
		struct sk_buff *skb = FUNC4(p);

		p = FUNC3(p);
		FUNC1(&skb->rbnode, &q->t_root);
		FUNC5(skb, skb);
	}

	FUNC5(q->t_head, q->t_tail);
	q->t_head = NULL;
	q->t_tail = NULL;
}