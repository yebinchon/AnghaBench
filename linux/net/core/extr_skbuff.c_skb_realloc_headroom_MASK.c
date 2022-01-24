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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 

struct sk_buff *FUNC6(struct sk_buff *skb, unsigned int headroom)
{
	struct sk_buff *skb2;
	int delta = headroom - FUNC5(skb);

	if (delta <= 0)
		skb2 = FUNC2(skb, GFP_ATOMIC);
	else {
		skb2 = FUNC4(skb, GFP_ATOMIC);
		if (skb2 && FUNC3(skb2, FUNC0(delta), 0,
					     GFP_ATOMIC)) {
			FUNC1(skb2);
			skb2 = NULL;
		}
	}
	return skb2;
}