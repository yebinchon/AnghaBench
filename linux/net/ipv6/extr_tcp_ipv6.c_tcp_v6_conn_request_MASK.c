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
struct sk_buff {scalar_t__ protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  tcp6_request_sock_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  tcp_request_sock_ipv6_ops ; 
 int FUNC4 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	if (skb->protocol == FUNC0(ETH_P_IP))
		return FUNC4(sk, skb);

	if (!FUNC1(skb))
		goto drop;

	return FUNC2(&tcp6_request_sock_ops,
				&tcp_request_sock_ipv6_ops, sk, skb);

drop:
	FUNC3(sk);
	return 0; /* don't send reset */
}