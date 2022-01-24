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
struct Qdisc {struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct Qdisc*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *q,
				      struct sk_buff *skb,
				      int *packets)
{
	int mapping = FUNC1(skb);
	struct sk_buff *nskb;
	int cnt = 0;

	do {
		nskb = q->dequeue(q);
		if (!nskb)
			break;
		if (FUNC4(FUNC1(nskb) != mapping)) {
			FUNC0(q, nskb);
			break;
		}
		skb->next = nskb;
		skb = nskb;
	} while (++cnt < 8);
	(*packets) += cnt;
	FUNC2(skb);
}