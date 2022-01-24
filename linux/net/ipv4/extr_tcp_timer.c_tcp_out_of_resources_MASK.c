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
struct tcp_sock {int /*<<< orphan*/  packets_out; int /*<<< orphan*/  snd_wnd; scalar_t__ lsndtime; } ;
struct sock {scalar_t__ sk_err_soft; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONMEMORY ; 
 int TCP_RTO_MAX ; 
 int TCP_TIMEWAIT_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ tcp_jiffies32 ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, bool do_reset)
{
	struct tcp_sock *tp = FUNC6(sk);
	int shift = 0;

	/* If peer does not open window for long time, or did not transmit
	 * anything for long time, penalize it. */
	if ((s32)(tcp_jiffies32 - tp->lsndtime) > 2*TCP_RTO_MAX || !do_reset)
		shift++;

	/* If some dubious ICMP arrived, penalize even more. */
	if (sk->sk_err_soft)
		shift++;

	if (FUNC3(sk, shift)) {
		/* Catch exceptional cases, when connection requires reset.
		 *      1. Last segment was sent recently. */
		if ((s32)(tcp_jiffies32 - tp->lsndtime) <= TCP_TIMEWAIT_LEN ||
		    /*  2. Window is closed. */
		    (!tp->snd_wnd && !tp->packets_out))
			do_reset = true;
		if (do_reset)
			FUNC5(sk, GFP_ATOMIC);
		FUNC4(sk);
		FUNC0(FUNC2(sk), LINUX_MIB_TCPABORTONMEMORY);
		return 1;
	}

	if (!FUNC1(FUNC2(sk))) {
		/* Not possible to send reset; just close */
		FUNC4(sk);
		return 1;
	}

	return 0;
}