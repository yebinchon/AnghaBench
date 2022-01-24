#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int ecn_flags; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tcp_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  TCPHDR_CWR ; 
 int /*<<< orphan*/  TCPHDR_ECE ; 
 int TCP_ECN_OK ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, struct sk_buff *skb)
{
	const struct tcp_sock *tp = FUNC4(sk);

	FUNC1(skb)->tcp_flags &= ~TCPHDR_CWR;
	if (!(tp->ecn_flags & TCP_ECN_OK))
		FUNC1(skb)->tcp_flags &= ~TCPHDR_ECE;
	else if (FUNC3(sk) ||
		 FUNC2(sk))
		FUNC0(sk);
}