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
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; struct sk_buff* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_buff*) ; 
 int FUNC9 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff *next, *segs;
	int ret;

	if (FUNC4(!FUNC8(sk, skb)))
		return FUNC9(sk, skb);

	FUNC1(skb, -FUNC5(skb));
	segs = FUNC7(sk, skb, false);
	for (skb = segs; skb; skb = next) {
		next = skb->next;
		FUNC0(skb, FUNC6(skb));

		ret = FUNC9(sk, skb);
		if (ret > 0)
			FUNC3(FUNC2(skb->dev), skb, ret,
						 true);
	}
	return 0;
}