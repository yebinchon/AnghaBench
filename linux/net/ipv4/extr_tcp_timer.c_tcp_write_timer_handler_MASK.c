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
struct sock {int sk_state; } ;
struct inet_connection_sock {int icsk_pending; int /*<<< orphan*/  icsk_timeout; int /*<<< orphan*/  icsk_retransmit_timer; } ;

/* Variables and functions */
#define  ICSK_TIME_LOSS_PROBE 131 
#define  ICSK_TIME_PROBE0 130 
#define  ICSK_TIME_REO_TIMEOUT 129 
#define  ICSK_TIME_RETRANS 128 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	int event;

	if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN)) ||
	    !icsk->icsk_pending)
		goto out;

	if (FUNC9(icsk->icsk_timeout, jiffies)) {
		FUNC2(sk, &icsk->icsk_retransmit_timer, icsk->icsk_timeout);
		goto out;
	}

	FUNC3(FUNC8(sk));
	event = icsk->icsk_pending;

	switch (event) {
	case ICSK_TIME_REO_TIMEOUT:
		FUNC5(sk);
		break;
	case ICSK_TIME_LOSS_PROBE:
		FUNC7(sk);
		break;
	case ICSK_TIME_RETRANS:
		icsk->icsk_pending = 0;
		FUNC6(sk);
		break;
	case ICSK_TIME_PROBE0:
		icsk->icsk_pending = 0;
		FUNC4(sk);
		break;
	}

out:
	FUNC1(sk);
}