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
struct sk_buff {struct sk_buff* next; } ;
struct cake_flow {struct sk_buff* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC1(struct cake_flow *flow)
{
	struct sk_buff *skb = flow->head;

	if (skb) {
		flow->head = skb->next;
		FUNC0(skb);
	}

	return skb;
}