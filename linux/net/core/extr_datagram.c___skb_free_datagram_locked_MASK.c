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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int) ; 

void FUNC7(struct sock *sk, struct sk_buff *skb, int len)
{
	bool slow;

	if (!FUNC5(skb)) {
		FUNC3(sk, len);
		return;
	}

	slow = FUNC1(sk);
	FUNC3(sk, len);
	FUNC4(skb);
	FUNC2(sk);
	FUNC6(sk, slow);

	/* skb is now orphaned, can be freed outside of locked section */
	FUNC0(skb);
}