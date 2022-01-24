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
struct sk_buff {scalar_t__ len; } ;
struct inet_frag_queue {struct sk_buff* fragments_tail; struct sk_buff* last_run_head; } ;
struct TYPE_2__ {struct sk_buff* next_frag; int /*<<< orphan*/  frag_run_len; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct inet_frag_queue *q,
				   struct sk_buff *skb)
{
	FUNC1(skb);

	FUNC0(q->last_run_head)->frag_run_len += skb->len;
	FUNC0(q->fragments_tail)->next_frag = skb;
	q->fragments_tail = skb;
}