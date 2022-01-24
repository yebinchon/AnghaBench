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
struct tcp_sock {scalar_t__ linger2; int /*<<< orphan*/  fastopen_rsk; int /*<<< orphan*/  repair; } ;
struct sock {int sk_state; TYPE_1__* sk_prot; int /*<<< orphan*/  sk_lingertime; int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_shutdown; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_4__ {int tcp_flags; scalar_t__ seq; scalar_t__ end_seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  orphan_count; int /*<<< orphan*/  (* disconnect ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONCLOSE ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONDATA ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONLINGER ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int TCPHDR_FIN ; 
 int TCP_CLOSE ; 
 int TCP_FIN_WAIT2 ; 
 int TCP_LISTEN ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int const TCP_TIMEWAIT_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int const) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct request_sock* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,struct request_sock*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,long) ; 
 scalar_t__ FUNC22 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (struct sock*) ; 
 int FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct sock*) ; 
 int /*<<< orphan*/  FUNC34 (struct sock*,int) ; 
 struct tcp_sock* FUNC35 (struct sock*) ; 
 int /*<<< orphan*/  FUNC36 (struct sock*,int,int const) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ) ; 

void FUNC38(struct sock *sk, long timeout)
{
	struct sk_buff *skb;
	int data_was_unread = 0;
	int state;

	FUNC14(sk);
	sk->sk_shutdown = SHUTDOWN_MASK;

	if (sk->sk_state == TCP_LISTEN) {
		FUNC34(sk, TCP_CLOSE);

		/* Special case. */
		FUNC10(sk);

		goto adjudge_to_death;
	}

	/*  We need to flush the recv. buffs.  We do this only on the
	 *  descriptor close, not protocol-sourced closes, because the
	 *  reader process may not have drained the data yet!
	 */
	while ((skb = FUNC5(&sk->sk_receive_queue)) != NULL) {
		u32 len = FUNC1(skb)->end_seq - FUNC1(skb)->seq;

		if (FUNC1(skb)->tcp_flags & TCPHDR_FIN)
			len--;
		data_was_unread += len;
		FUNC3(skb);
	}

	FUNC20(sk);

	/* If socket has been already reset (e.g. in tcp_reset()) - kill it. */
	if (sk->sk_state == TCP_CLOSE)
		goto adjudge_to_death;

	/* As outlined in RFC 2525, section 2.17, we send a RST here because
	 * data was lost. To witness the awful effects of the old behavior of
	 * always doing a FIN, run an older 2.1.x kernel or 2.0.x, start a bulk
	 * GET in an FTP client, suspend the process, wait for the client to
	 * advertise a zero window, then kill -9 the FTP client, wheee...
	 * Note: timeout is always zero in such a case.
	 */
	if (FUNC37(FUNC35(sk)->repair)) {
		sk->sk_prot->disconnect(sk, 0);
	} else if (data_was_unread) {
		/* Unread data was tossed, zap the connection. */
		FUNC0(FUNC24(sk), LINUX_MIB_TCPABORTONCLOSE);
		FUNC34(sk, TCP_CLOSE);
		FUNC32(sk, sk->sk_allocation);
	} else if (FUNC22(sk, SOCK_LINGER) && !sk->sk_lingertime) {
		/* Check zero linger _after_ checking for unread data. */
		sk->sk_prot->disconnect(sk, 0);
		FUNC0(FUNC24(sk), LINUX_MIB_TCPABORTONDATA);
	} else if (FUNC30(sk)) {
		/* We FIN if the application ate all the data before
		 * zapping the connection.
		 */

		/* RED-PEN. Formally speaking, we have broken TCP state
		 * machine. State transitions:
		 *
		 * TCP_ESTABLISHED -> TCP_FIN_WAIT1
		 * TCP_SYN_RECV	-> TCP_FIN_WAIT1 (forget it, it's impossible)
		 * TCP_CLOSE_WAIT -> TCP_LAST_ACK
		 *
		 * are legal only when FIN has been sent (i.e. in window),
		 * rather than queued out of window. Purists blame.
		 *
		 * F.e. "RFC state" is ESTABLISHED,
		 * if Linux state is FIN-WAIT-1, but FIN is still not sent.
		 *
		 * The visible declinations are that sometimes
		 * we enter time-wait state, when it is not required really
		 * (harmless), do not send active resets, when they are
		 * required by specs (TCP_ESTABLISHED, TCP_CLOSE_WAIT, when
		 * they look as CLOSING or LAST_ACK for Linux)
		 * Probably, I missed some more holelets.
		 * 						--ANK
		 * XXX (TFO) - To start off we don't support SYN+ACK+FIN
		 * in a single packet! (May consider it later but will
		 * probably need API support or TCP_CORK SYN-ACK until
		 * data is written and socket is closed.)
		 */
		FUNC33(sk);
	}

	FUNC21(sk, timeout);

adjudge_to_death:
	state = sk->sk_state;
	FUNC23(sk);
	FUNC25(sk);

	FUNC12();
	FUNC6(sk);
	/* remove backlog if any, without releasing ownership. */
	FUNC4(sk);

	FUNC16(sk->sk_prot->orphan_count);

	/* Have we already been destroyed by a softirq or backlog? */
	if (state != TCP_CLOSE && sk->sk_state == TCP_CLOSE)
		goto out;

	/*	This is a (useful) BSD violating of the RFC. There is a
	 *	problem with TCP as specified in that the other end could
	 *	keep a socket open forever with no application left this end.
	 *	We use a 1 minute timeout (about the same as BSD) then kill
	 *	our end. If they send after that then tough - BUT: long enough
	 *	that we won't make the old 4*rto = almost no time - whoops
	 *	reset mistake.
	 *
	 *	Nope, it was not mistake. It is really desired behaviour
	 *	f.e. on http servers, when such sockets are useless, but
	 *	consume significant resources. Let's do it with special
	 *	linger2	option.					--ANK
	 */

	if (sk->sk_state == TCP_FIN_WAIT2) {
		struct tcp_sock *tp = FUNC35(sk);
		if (tp->linger2 < 0) {
			FUNC34(sk, TCP_CLOSE);
			FUNC32(sk, GFP_ATOMIC);
			FUNC2(FUNC24(sk),
					LINUX_MIB_TCPABORTONLINGER);
		} else {
			const int tmo = FUNC31(sk);

			if (tmo > TCP_TIMEWAIT_LEN) {
				FUNC11(sk,
						tmo - TCP_TIMEWAIT_LEN);
			} else {
				FUNC36(sk, TCP_FIN_WAIT2, tmo);
				goto out;
			}
		}
	}
	if (sk->sk_state != TCP_CLOSE) {
		FUNC20(sk);
		if (FUNC29(sk, 0)) {
			FUNC34(sk, TCP_CLOSE);
			FUNC32(sk, GFP_ATOMIC);
			FUNC2(FUNC24(sk),
					LINUX_MIB_TCPABORTONMEMORY);
		} else if (!FUNC8(FUNC24(sk))) {
			/* Not possible to send reset; just close */
			FUNC34(sk, TCP_CLOSE);
		}
	}

	if (sk->sk_state == TCP_CLOSE) {
		struct request_sock *req;

		req = FUNC17(FUNC35(sk)->fastopen_rsk,
						FUNC15(sk));
		/* We could get here with a non-NULL req if the socket is
		 * aborted (e.g., closed with unread data) before 3WHS
		 * finishes.
		 */
		if (req)
			FUNC19(sk, req, false);
		FUNC9(sk);
	}
	/* Otherwise, socket is reprieved until protocol close. */

out:
	FUNC7(sk);
	FUNC13();
	FUNC18(sk);
	FUNC26(sk);
}