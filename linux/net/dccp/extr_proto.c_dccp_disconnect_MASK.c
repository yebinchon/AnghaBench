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
struct sock {int sk_state; int sk_userlocks; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;scalar_t__ sk_shutdown; int /*<<< orphan*/ * sk_send_head; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; void* sk_err; } ;
struct inet_sock {scalar_t__ inet_num; scalar_t__ inet_dport; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_bind_hash; scalar_t__ icsk_backoff; } ;
struct dccp_sock {int /*<<< orphan*/ * dccps_hc_rx_ccid; } ;

/* Variables and functions */
 int const DCCP_CLOSED ; 
 int const DCCP_LISTEN ; 
 int const DCCP_REQUESTING ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_ABORTED ; 
 void* ECONNRESET ; 
 int SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int const) ; 
 struct dccp_sock* FUNC9 (struct sock*) ; 
 struct inet_connection_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 struct inet_sock* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 

int FUNC17(struct sock *sk, int flags)
{
	struct inet_connection_sock *icsk = FUNC10(sk);
	struct inet_sock *inet = FUNC14(sk);
	struct dccp_sock *dp = FUNC9(sk);
	const int old_state = sk->sk_state;

	if (old_state != DCCP_CLOSED)
		FUNC8(sk, DCCP_CLOSED);

	/*
	 * This corresponds to the ABORT function of RFC793, sec. 3.8
	 * TCP uses a RST segment, DCCP a Reset packet with Code 2, "Aborted".
	 */
	if (old_state == DCCP_LISTEN) {
		FUNC12(sk);
	} else if (FUNC6(old_state)) {
		FUNC7(sk, DCCP_RESET_CODE_ABORTED);
		sk->sk_err = ECONNRESET;
	} else if (old_state == DCCP_REQUESTING)
		sk->sk_err = ECONNRESET;

	FUNC5(sk);
	FUNC4(dp->dccps_hc_rx_ccid, sk);
	dp->dccps_hc_rx_ccid = NULL;

	FUNC3(&sk->sk_receive_queue);
	FUNC3(&sk->sk_write_queue);
	if (sk->sk_send_head != NULL) {
		FUNC1(sk->sk_send_head);
		sk->sk_send_head = NULL;
	}

	inet->inet_dport = 0;

	if (!(sk->sk_userlocks & SOCK_BINDADDR_LOCK))
		FUNC13(sk);

	sk->sk_shutdown = 0;
	FUNC15(sk, SOCK_DONE);

	icsk->icsk_backoff = 0;
	FUNC11(sk);
	FUNC2(sk);

	FUNC0(inet->inet_num && !icsk->icsk_bind_hash);

	sk->sk_error_report(sk);
	return 0;
}