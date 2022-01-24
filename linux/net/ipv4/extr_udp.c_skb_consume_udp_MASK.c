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
struct sock {int /*<<< orphan*/  sk_peek_off; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int) ; 

void FUNC9(struct sock *sk, struct sk_buff *skb, int len)
{
	if (FUNC7(FUNC0(sk->sk_peek_off) >= 0)) {
		bool slow = FUNC2(sk);

		FUNC3(sk, len);
		FUNC8(sk, slow);
	}

	if (!FUNC5(skb))
		return;

	/* In the more common cases we cleared the head states previously,
	 * see __udp_queue_rcv_skb().
	 */
	if (FUNC7(FUNC6(skb)))
		FUNC4(skb);
	FUNC1(skb);
}