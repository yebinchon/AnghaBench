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
struct tcp_sock {int dummy; } ;
struct sock {int sk_state; } ;
struct TYPE_2__ {int sysctl_tcp_syn_retries; int sysctl_tcp_retries1; int sysctl_tcp_retries2; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {int icsk_retransmits; scalar_t__ icsk_rto; int /*<<< orphan*/  icsk_user_timeout; scalar_t__ icsk_syn_retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_SOCK_OPS_RTO_CB ; 
 int /*<<< orphan*/  BPF_SOCK_OPS_RTO_CB_FLAG ; 
 scalar_t__ FUNC0 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 scalar_t__ TCP_RTO_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int FUNC3 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inet_connection_sock*,struct sock*) ; 
 int FUNC10 (struct sock*,int const) ; 
 scalar_t__ FUNC11 (struct sock*,int) ; 
 struct tcp_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 

__attribute__((used)) static int FUNC14(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC2(sk);
	struct tcp_sock *tp = FUNC12(sk);
	struct net *net = FUNC6(sk);
	bool expired = false, do_reset;
	int retry_until;

	if ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
		if (icsk->icsk_retransmits) {
			FUNC1(sk);
		} else {
			FUNC4(sk);
		}
		retry_until = icsk->icsk_syn_retries ? : net->ipv4.sysctl_tcp_syn_retries;
		expired = icsk->icsk_retransmits >= retry_until;
	} else {
		if (FUNC3(sk, net->ipv4.sysctl_tcp_retries1, 0)) {
			/* Black hole detection */
			FUNC9(icsk, sk);

			FUNC1(sk);
		} else {
			FUNC4(sk);
		}

		retry_until = net->ipv4.sysctl_tcp_retries2;
		if (FUNC5(sk, SOCK_DEAD)) {
			const bool alive = icsk->icsk_rto < TCP_RTO_MAX;

			retry_until = FUNC10(sk, alive);
			do_reset = alive ||
				!FUNC3(sk, retry_until, 0);

			if (FUNC11(sk, do_reset))
				return 1;
		}
	}
	if (!expired)
		expired = FUNC3(sk, retry_until,
						icsk->icsk_user_timeout);
	FUNC8(sk, expired);

	if (FUNC0(tp, BPF_SOCK_OPS_RTO_CB_FLAG))
		FUNC7(sk, BPF_SOCK_OPS_RTO_CB,
				  icsk->icsk_retransmits,
				  icsk->icsk_rto, (int)expired);

	if (expired) {
		/* Has it gone just too far? */
		FUNC13(sk);
		return 1;
	}

	return 0;
}