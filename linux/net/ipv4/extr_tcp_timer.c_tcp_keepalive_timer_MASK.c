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
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct tcp_sock {scalar_t__ linger2; scalar_t__ packets_out; } ;
struct sock {int sk_state; } ;
struct inet_connection_sock {scalar_t__ icsk_user_timeout; scalar_t__ icsk_probes_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  LINUX_MIB_TCPKEEPALIVE ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_KEEPOPEN ; 
 int TCPF_CLOSE ; 
 int TCPF_SYN_SENT ; 
 int TCP_FIN_WAIT2 ; 
 int TCP_LISTEN ; 
 int TCP_RESOURCE_PROBE_INTERVAL ; 
 int TCP_TIMEWAIT_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct sock* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int) ; 
 int FUNC5 (struct tcp_sock*) ; 
 scalar_t__ FUNC6 (struct tcp_sock*) ; 
 int FUNC7 (struct tcp_sock*) ; 
 int FUNC8 (struct tcp_sock*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct sock* sk ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  sk_timer ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int,int const) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 scalar_t__ FUNC23 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC24 (struct timer_list *t)
{
	struct sock *sk = FUNC2(sk, t, sk_timer);
	struct inet_connection_sock *icsk = FUNC3(sk);
	struct tcp_sock *tp = FUNC19(sk);
	u32 elapsed;

	/* Only process if socket is not in use. */
	FUNC0(sk);
	if (FUNC13(sk)) {
		/* Try again later. */
		FUNC4 (sk, HZ/20);
		goto out;
	}

	if (sk->sk_state == TCP_LISTEN) {
		FUNC10("Hmm... keepalive on a LISTEN ???\n");
		goto out;
	}

	FUNC17(tp);
	if (sk->sk_state == TCP_FIN_WAIT2 && FUNC12(sk, SOCK_DEAD)) {
		if (tp->linger2 >= 0) {
			const int tmo = FUNC16(sk) - TCP_TIMEWAIT_LEN;

			if (tmo > 0) {
				FUNC20(sk, TCP_FIN_WAIT2, tmo);
				goto out;
			}
		}
		FUNC18(sk, GFP_ATOMIC);
		goto death;
	}

	if (!FUNC12(sk, SOCK_KEEPOPEN) ||
	    ((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)))
		goto out;

	elapsed = FUNC8(tp);

	/* It is alive without keepalive 8) */
	if (tp->packets_out || !FUNC22(sk))
		goto resched;

	elapsed = FUNC7(tp);

	if (elapsed >= FUNC8(tp)) {
		/* If the TCP_USER_TIMEOUT option is enabled, use that
		 * to determine when to timeout instead.
		 */
		if ((icsk->icsk_user_timeout != 0 &&
		    elapsed >= FUNC9(icsk->icsk_user_timeout) &&
		    icsk->icsk_probes_out > 0) ||
		    (icsk->icsk_user_timeout == 0 &&
		    icsk->icsk_probes_out >= FUNC6(tp))) {
			FUNC18(sk, GFP_ATOMIC);
			FUNC21(sk);
			goto out;
		}
		if (FUNC23(sk, LINUX_MIB_TCPKEEPALIVE) <= 0) {
			icsk->icsk_probes_out++;
			elapsed = FUNC5(tp);
		} else {
			/* If keepalive was lost due to local congestion,
			 * try harder.
			 */
			elapsed = TCP_RESOURCE_PROBE_INTERVAL;
		}
	} else {
		/* It is tp->rcv_tstamp + keepalive_time_when(tp) */
		elapsed = FUNC8(tp) - elapsed;
	}

	FUNC11(sk);

resched:
	FUNC4 (sk, elapsed);
	goto out;

death:
	FUNC15(sk);

out:
	FUNC1(sk);
	FUNC14(sk);
}