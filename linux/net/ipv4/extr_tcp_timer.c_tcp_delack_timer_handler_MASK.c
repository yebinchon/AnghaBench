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
struct sock {int sk_state; } ;
struct TYPE_2__ {int pending; int ato; int /*<<< orphan*/  timeout; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; int /*<<< orphan*/  icsk_rto; int /*<<< orphan*/  icsk_delack_timer; } ;

/* Variables and functions */
 int ICSK_ACK_TIMER ; 
 int /*<<< orphan*/  LINUX_MIB_DELAYEDACKS ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 int TCP_ATO_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct sock*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC1(sk);

	FUNC7(sk);

	if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN)) ||
	    !(icsk->icsk_ack.pending & ICSK_ACK_TIMER))
		goto out;

	if (FUNC14(icsk->icsk_ack.timeout, jiffies)) {
		FUNC8(sk, &icsk->icsk_delack_timer, icsk->icsk_ack.timeout);
		goto out;
	}
	icsk->icsk_ack.pending &= ~ICSK_ACK_TIMER;

	if (FUNC2(sk)) {
		if (!FUNC4(sk)) {
			/* Delayed ACK missed: inflate ATO. */
			icsk->icsk_ack.ato = FUNC5(icsk->icsk_ack.ato << 1, icsk->icsk_rto);
		} else {
			/* Delayed ACK missed: leave pingpong mode and
			 * deflate ATO.
			 */
			FUNC3(sk);
			icsk->icsk_ack.ato      = TCP_ATO_MIN;
		}
		FUNC10(FUNC12(sk));
		FUNC11(sk);
		FUNC0(FUNC9(sk), LINUX_MIB_DELAYEDACKS);
	}

out:
	if (FUNC13(sk))
		FUNC6(sk);
}