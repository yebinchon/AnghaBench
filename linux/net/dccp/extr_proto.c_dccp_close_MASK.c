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
typedef  scalar_t__ u32 ;
struct sock {int sk_state; TYPE_1__* sk_prot; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_lingertime; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_shutdown; } ;
struct sk_buff {scalar_t__ len; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_xmit_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  orphan_count; int /*<<< orphan*/  (* disconnect ) (struct sock*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DCCP_CLOSED ; 
 int DCCP_LISTEN ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_LINGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int) ; 
 struct dccp_sock* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,long) ; 
 scalar_t__ FUNC21 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC27(struct sock *sk, long timeout)
{
	struct dccp_sock *dp = FUNC10(sk);
	struct sk_buff *skb;
	u32 data_was_unread = 0;
	int state;

	FUNC16(sk);

	sk->sk_shutdown = SHUTDOWN_MASK;

	if (sk->sk_state == DCCP_LISTEN) {
		FUNC9(sk, DCCP_CLOSED);

		/* Special case. */
		FUNC13(sk);

		goto adjudge_to_death;
	}

	FUNC19(sk, &dp->dccps_xmit_timer);

	/*
	 * We need to flush the recv. buffs.  We do this only on the
	 * descriptor close, not protocol-sourced closes, because the
	  *reader process may not have drained the data yet!
	 */
	while ((skb = FUNC3(&sk->sk_receive_queue)) != NULL) {
		data_was_unread += skb->len;
		FUNC2(skb);
	}

	/* If socket has been already reset kill it. */
	if (sk->sk_state == DCCP_CLOSED)
		goto adjudge_to_death;

	if (data_was_unread) {
		/* Unread data was tossed, send an appropriate Reset Code */
		FUNC0("ABORT with %u bytes unread\n", data_was_unread);
		FUNC8(sk, DCCP_RESET_CODE_ABORTED);
		FUNC9(sk, DCCP_CLOSED);
	} else if (FUNC21(sk, SOCK_LINGER) && !sk->sk_lingertime) {
		/* Check zero linger _after_ checking for unread data. */
		sk->sk_prot->disconnect(sk, 0);
	} else if (sk->sk_state != DCCP_CLOSED) {
		/*
		 * Normal connection termination. May need to wait if there are
		 * still packets in the TX queue that are delayed by the CCID.
		 */
		FUNC7(sk, &timeout);
		FUNC11(sk);
	}

	/*
	 * Flush write queue. This may be necessary in several cases:
	 * - we have been closed by the peer but still have application data;
	 * - abortive termination (unread data or zero linger time),
	 * - normal termination but queue could not be flushed within time limit
	 */
	FUNC4(&sk->sk_write_queue);

	FUNC20(sk, timeout);

adjudge_to_death:
	state = sk->sk_state;
	FUNC22(sk);
	FUNC23(sk);

	/*
	 * It is the last release_sock in its life. It will remove backlog.
	 */
	FUNC18(sk);
	/*
	 * Now socket is owned by kernel and we acquire BH lock
	 * to finish close. No need to check for user refs.
	 */
	FUNC14();
	FUNC5(sk);
	FUNC1(FUNC24(sk));

	FUNC17(sk->sk_prot->orphan_count);

	/* Have we already been destroyed by a softirq or backlog? */
	if (state != DCCP_CLOSED && sk->sk_state == DCCP_CLOSED)
		goto out;

	if (sk->sk_state == DCCP_CLOSED)
		FUNC12(sk);

	/* Otherwise, socket is reprieved until protocol close. */

out:
	FUNC6(sk);
	FUNC15();
	FUNC25(sk);
}