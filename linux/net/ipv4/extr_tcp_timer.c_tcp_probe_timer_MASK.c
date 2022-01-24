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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {int icsk_probes_out; scalar_t__ icsk_user_timeout; int icsk_backoff; } ;
struct TYPE_3__ {int sysctl_tcp_retries2; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_RTO_MAX ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct inet_connection_sock*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sock*,int const) ; 
 scalar_t__ FUNC6 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct sk_buff* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 struct tcp_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static void FUNC12(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	struct sk_buff *skb = FUNC8(sk);
	struct tcp_sock *tp = FUNC10(sk);
	int max_probes;

	if (tp->packets_out || !skb) {
		icsk->icsk_probes_out = 0;
		return;
	}

	/* RFC 1122 4.2.2.17 requires the sender to stay open indefinitely as
	 * long as the receiver continues to respond probes. We support this by
	 * default and reset icsk_probes_out with incoming ACKs. But if the
	 * socket is orphaned or the user specifies TCP_USER_TIMEOUT, we
	 * kill the socket when the retry count and the time exceeds the
	 * corresponding system limit. We also implement similar policy when
	 * we use RTO to probe window in tcp_retransmit_timer().
	 */
	if (icsk->icsk_user_timeout) {
		u32 elapsed = FUNC4(sk, icsk->icsk_probes_out,
						FUNC7(sk));

		if (elapsed >= icsk->icsk_user_timeout)
			goto abort;
	}

	max_probes = FUNC3(sk)->ipv4.sysctl_tcp_retries2;
	if (FUNC2(sk, SOCK_DEAD)) {
		const bool alive = FUNC1(icsk, TCP_RTO_MAX) < TCP_RTO_MAX;

		max_probes = FUNC5(sk, alive);
		if (!alive && icsk->icsk_backoff >= max_probes)
			goto abort;
		if (FUNC6(sk, true))
			return;
	}

	if (icsk->icsk_probes_out >= max_probes) {
abort:		FUNC11(sk);
	} else {
		/* Only send another probe if we didn't close things up. */
		FUNC9(sk);
	}
}