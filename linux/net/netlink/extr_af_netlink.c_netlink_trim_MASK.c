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
struct sk_buff {int end; int tail; int truesize; int /*<<< orphan*/  head; int /*<<< orphan*/ * sk; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct sk_buff *skb, gfp_t allocation)
{
	int delta;

	FUNC0(skb->sk != NULL);
	delta = skb->end - skb->tail;
	if (FUNC2(skb->head) || delta * 2 < skb->truesize)
		return skb;

	if (FUNC5(skb)) {
		struct sk_buff *nskb = FUNC4(skb, allocation);
		if (!nskb)
			return skb;
		FUNC1(skb);
		skb = nskb;
	}

	FUNC3(skb, 0, -delta,
			 (allocation & ~__GFP_DIRECT_RECLAIM) |
			 __GFP_NOWARN | __GFP_NORETRY);
	return skb;
}