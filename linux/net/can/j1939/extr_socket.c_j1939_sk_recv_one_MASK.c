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
struct sk_buff {int /*<<< orphan*/ * sk; } ;
struct j1939_sock {int /*<<< orphan*/  sk; } ;
struct j1939_sk_buff_cb {int /*<<< orphan*/  msg_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MSG_DONTROUTE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct j1939_sock*,struct j1939_sk_buff_cb const*) ; 
 void* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct j1939_sock *jsk, struct sk_buff *oskb)
{
	const struct j1939_sk_buff_cb *oskcb = FUNC2(oskb);
	struct j1939_sk_buff_cb *skcb;
	struct sk_buff *skb;

	if (oskb->sk == &jsk->sk)
		return;

	if (!FUNC1(jsk, oskcb))
		return;

	skb = FUNC5(oskb, GFP_ATOMIC);
	if (!skb) {
		FUNC4("skb clone failed\n");
		return;
	}
	FUNC0(skb, oskb->sk);

	skcb = FUNC2(skb);
	skcb->msg_flags &= ~(MSG_DONTROUTE);
	if (skb->sk)
		skcb->msg_flags |= MSG_DONTROUTE;

	if (FUNC6(&jsk->sk, skb) < 0)
		FUNC3(skb);
}