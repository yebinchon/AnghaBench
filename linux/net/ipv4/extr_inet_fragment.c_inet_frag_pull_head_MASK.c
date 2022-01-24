#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  truesize; int /*<<< orphan*/  rbnode; } ;
struct inet_frag_queue {int /*<<< orphan*/  fqdir; struct sk_buff* fragments_tail; int /*<<< orphan*/  rb_fragments; } ;
struct TYPE_2__ {struct sk_buff* next_frag; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC7(struct inet_frag_queue *q)
{
	struct sk_buff *head, *skb;

	head = FUNC5(&q->rb_fragments);
	if (!head)
		return NULL;
	skb = FUNC0(head)->next_frag;
	if (skb)
		FUNC4(&head->rbnode, &skb->rbnode,
				&q->rb_fragments);
	else
		FUNC3(&head->rbnode, &q->rb_fragments);
	FUNC2(&head->rbnode, 0, sizeof(head->rbnode));
	FUNC1();

	if (head == q->fragments_tail)
		q->fragments_tail = NULL;

	FUNC6(q->fqdir, head->truesize);

	return head;
}