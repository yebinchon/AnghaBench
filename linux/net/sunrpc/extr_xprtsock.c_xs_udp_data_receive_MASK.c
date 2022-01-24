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
struct sock_xprt {int /*<<< orphan*/  recv_mutex; int /*<<< orphan*/  xprt; struct sock* inet; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (struct sock*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock_xprt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sock*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(struct sock_xprt *transport)
{
	struct sk_buff *skb;
	struct sock *sk;
	int err;

	FUNC2(&transport->recv_mutex);
	sk = transport->inet;
	if (sk == NULL)
		goto out;
	for (;;) {
		skb = FUNC4(sk, 0, 1, &err);
		if (skb == NULL)
			break;
		FUNC6(&transport->xprt, sk, skb);
		FUNC1(skb);
		FUNC0();
	}
	FUNC5(transport);
out:
	FUNC3(&transport->recv_mutex);
}