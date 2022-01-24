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
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  rbnode; struct sk_buff* next; } ;
struct fq_flow {int /*<<< orphan*/  t_root; struct sk_buff* head; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch, struct fq_flow *flow,
			  struct sk_buff *skb)
{
	if (skb == flow->head) {
		flow->head = skb->next;
	} else {
		FUNC1(&skb->rbnode, &flow->t_root);
		skb->dev = FUNC0(sch);
	}
}