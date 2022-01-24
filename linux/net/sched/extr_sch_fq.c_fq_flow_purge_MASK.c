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
struct fq_flow {scalar_t__ qlen; struct sk_buff* head; struct sk_buff* tail; int /*<<< orphan*/  t_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC2 (struct rb_node*) ; 
 struct sk_buff* FUNC3 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC5(struct fq_flow *flow)
{
	struct rb_node *p = FUNC1(&flow->t_root);

	while (p) {
		struct sk_buff *skb = FUNC3(p);

		p = FUNC2(p);
		FUNC0(&skb->rbnode, &flow->t_root);
		FUNC4(skb, skb);
	}
	FUNC4(flow->head, flow->tail);
	flow->head = NULL;
	flow->qlen = 0;
}