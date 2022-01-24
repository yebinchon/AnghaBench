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
struct sock {int sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETLINK_S_CONGESTED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sock*) ; 
 struct netlink_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct netlink_sock *nlk = FUNC3(sk);

	if (FUNC1(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf &&
	    !FUNC4(NETLINK_S_CONGESTED, &nlk->state)) {
		FUNC2(skb, sk);
		FUNC0(sk, skb);
		return FUNC1(&sk->sk_rmem_alloc) > (sk->sk_rcvbuf >> 1);
	}
	return -1;
}