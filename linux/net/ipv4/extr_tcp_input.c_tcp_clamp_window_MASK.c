#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {scalar_t__ window_clamp; unsigned int advmss; int /*<<< orphan*/  rcv_ssthresh; } ;
struct sock {scalar_t__ sk_rcvbuf; int sk_userlocks; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct TYPE_4__ {scalar_t__* sysctl_tcp_rmem; } ;
struct net {TYPE_2__ ipv4; } ;
struct TYPE_3__ {scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 int SOCK_RCVBUF_LOCK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	struct tcp_sock *tp = FUNC7(sk);
	struct inet_connection_sock *icsk = FUNC2(sk);
	struct net *net = FUNC6(sk);

	icsk->icsk_ack.quick = 0;

	if (sk->sk_rcvbuf < net->ipv4.sysctl_tcp_rmem[2] &&
	    !(sk->sk_userlocks & SOCK_RCVBUF_LOCK) &&
	    !FUNC8(sk) &&
	    FUNC4(sk) < FUNC5(sk, 0)) {
		FUNC0(sk->sk_rcvbuf,
			   FUNC3(FUNC1(&sk->sk_rmem_alloc),
			       net->ipv4.sysctl_tcp_rmem[2]));
	}
	if (FUNC1(&sk->sk_rmem_alloc) > sk->sk_rcvbuf)
		tp->rcv_ssthresh = FUNC3(tp->window_clamp, 2U * tp->advmss);
}