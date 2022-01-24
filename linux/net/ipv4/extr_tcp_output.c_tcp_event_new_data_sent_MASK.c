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
struct tcp_sock {unsigned int packets_out; int /*<<< orphan*/  snd_nxt; } ;
struct sock {int /*<<< orphan*/  tcp_rtx_queue; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_pending; } ;
struct TYPE_2__ {int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 scalar_t__ ICSK_TIME_LOSS_PROBE ; 
 int /*<<< orphan*/  LINUX_MIB_TCPORIGDATASENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk, struct sk_buff *skb)
{
	struct inet_connection_sock *icsk = FUNC4(sk);
	struct tcp_sock *tp = FUNC8(sk);
	unsigned int prior_packets = tp->packets_out;

	FUNC2(tp->snd_nxt, FUNC1(skb)->end_seq);

	FUNC3(skb, &sk->sk_write_queue);
	FUNC6(&sk->tcp_rtx_queue, skb);

	tp->packets_out += FUNC9(skb);
	if (!prior_packets || icsk->icsk_pending == ICSK_TIME_LOSS_PROBE)
		FUNC7(sk);

	FUNC0(FUNC5(sk), LINUX_MIB_TCPORIGDATASENT,
		      FUNC9(skb));
}