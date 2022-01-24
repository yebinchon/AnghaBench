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
struct tcp_sock {int /*<<< orphan*/  retrans_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sacked; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPLOSTRETRANSMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int TCPCB_SACKED_RETRANS ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 

void FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC3(sk);

	FUNC4(tp, skb);
	if (FUNC1(skb)->sacked & TCPCB_SACKED_RETRANS) {
		/* Account for retransmits that are lost again */
		FUNC1(skb)->sacked &= ~TCPCB_SACKED_RETRANS;
		tp->retrans_out -= FUNC5(skb);
		FUNC0(FUNC2(sk), LINUX_MIB_TCPLOSTRETRANSMIT,
			      FUNC5(skb));
	}
}