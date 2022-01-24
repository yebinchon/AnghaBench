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
struct udp_skb_cb {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; struct sk_buff* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SKB_SGO_CB_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff *next, *segs;
	int ret;

	if (FUNC5(!FUNC10(sk, skb)))
		return FUNC8(sk, skb);

	FUNC0(sizeof(struct udp_skb_cb) > SKB_SGO_CB_OFFSET);
	FUNC2(skb, -FUNC6(skb));
	segs = FUNC9(sk, skb, true);
	for (skb = segs; skb; skb = next) {
		next = skb->next;
		FUNC1(skb, FUNC7(skb));
		ret = FUNC8(sk, skb);
		if (ret > 0)
			FUNC4(FUNC3(skb->dev), skb, -ret);
	}
	return 0;
}