#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  rbnode; struct sk_buff* next; scalar_t__ tstamp; } ;
struct rb_node {struct rb_node* rb_left; struct rb_node* rb_right; } ;
struct TYPE_3__ {struct rb_node* rb_node; } ;
struct fq_flow {TYPE_1__ t_root; struct sk_buff* tail; struct sk_buff* head; } ;
struct TYPE_4__ {scalar_t__ time_to_send; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 
 struct sk_buff* FUNC4 (struct rb_node*) ; 

__attribute__((used)) static void FUNC5(struct fq_flow *flow, struct sk_buff *skb)
{
	struct rb_node **p, *parent;
	struct sk_buff *head, *aux;

	FUNC0(skb)->time_to_send = skb->tstamp ?: FUNC1();

	head = flow->head;
	if (!head ||
	    FUNC0(skb)->time_to_send >= FUNC0(flow->tail)->time_to_send) {
		if (!head)
			flow->head = skb;
		else
			flow->tail->next = skb;
		flow->tail = skb;
		skb->next = NULL;
		return;
	}

	p = &flow->t_root.rb_node;
	parent = NULL;

	while (*p) {
		parent = *p;
		aux = FUNC4(parent);
		if (FUNC0(skb)->time_to_send >= FUNC0(aux)->time_to_send)
			p = &parent->rb_right;
		else
			p = &parent->rb_left;
	}
	FUNC3(&skb->rbnode, parent, p);
	FUNC2(&skb->rbnode, &flow->t_root);
}