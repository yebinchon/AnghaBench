#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct tcp_sock {int tcp_clock_cache; int tcp_wstamp_ns; int snd_cwnd; int mss_cache; int snd_wnd; int srtt_us; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; int tstamp; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
typedef  int s64 ;
struct TYPE_6__ {int seq; int tcp_flags; scalar_t__ eor; } ;
struct TYPE_4__ {int /*<<< orphan*/  sysctl_tcp_tso_win_divisor; } ;
struct TYPE_5__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NSEC_PER_MSEC ; 
 scalar_t__ NSEC_PER_USEC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TCPHDR_FIN ; 
 scalar_t__ TCP_CA_Recovery ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (int,int) ; 
 TYPE_2__* FUNC5 (struct sock*) ; 
 int FUNC6 (struct tcp_sock*) ; 
 int FUNC7 (struct tcp_sock*) ; 
 struct sk_buff* FUNC8 (struct sock*) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 
 int FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct tcp_sock*) ; 
 struct sk_buff* FUNC12 (struct sock*) ; 

__attribute__((used)) static bool FUNC13(struct sock *sk, struct sk_buff *skb,
				 bool *is_cwnd_limited,
				 bool *is_rwnd_limited,
				 u32 max_segs)
{
	const struct inet_connection_sock *icsk = FUNC3(sk);
	u32 send_win, cong_win, limit, in_flight;
	struct tcp_sock *tp = FUNC9(sk);
	struct sk_buff *head;
	int win_divisor;
	s64 delta;

	if (icsk->icsk_ca_state >= TCP_CA_Recovery)
		goto send_now;

	/* Avoid bursty behavior by allowing defer
	 * only if the last write was recent (1 ms).
	 * Note that tp->tcp_wstamp_ns can be in the future if we have
	 * packets waiting in a qdisc or device for EDT delivery.
	 */
	delta = tp->tcp_clock_cache - tp->tcp_wstamp_ns - NSEC_PER_MSEC;
	if (delta > 0)
		goto send_now;

	in_flight = FUNC7(tp);

	FUNC0(FUNC10(skb) <= 1);
	FUNC0(tp->snd_cwnd <= in_flight);

	send_win = FUNC11(tp) - FUNC2(skb)->seq;

	/* From in_flight test above, we know that cwnd > in_flight.  */
	cong_win = (tp->snd_cwnd - in_flight) * tp->mss_cache;

	limit = FUNC4(send_win, cong_win);

	/* If a full-sized TSO skb can be sent, do it. */
	if (limit >= max_segs * tp->mss_cache)
		goto send_now;

	/* Middle in queue won't get any more data, full sendable already? */
	if ((skb != FUNC12(sk)) && (limit >= skb->len))
		goto send_now;

	win_divisor = FUNC1(FUNC5(sk)->ipv4.sysctl_tcp_tso_win_divisor);
	if (win_divisor) {
		u32 chunk = FUNC4(tp->snd_wnd, tp->snd_cwnd * tp->mss_cache);

		/* If at least some fraction of a window is available,
		 * just use it.
		 */
		chunk /= win_divisor;
		if (limit >= chunk)
			goto send_now;
	} else {
		/* Different approach, try not to defer past a single
		 * ACK.  Receiver should ACK every other full sized
		 * frame, so if we have space for more than 3 frames
		 * then send now.
		 */
		if (limit > FUNC6(tp) * tp->mss_cache)
			goto send_now;
	}

	/* TODO : use tsorted_sent_queue ? */
	head = FUNC8(sk);
	if (!head)
		goto send_now;
	delta = tp->tcp_clock_cache - head->tstamp;
	/* If next ACK is likely to come too late (half srtt), do not defer */
	if ((s64)(delta - (u64)NSEC_PER_USEC * (tp->srtt_us >> 4)) < 0)
		goto send_now;

	/* Ok, it looks like it is advisable to defer.
	 * Three cases are tracked :
	 * 1) We are cwnd-limited
	 * 2) We are rwnd-limited
	 * 3) We are application limited.
	 */
	if (cong_win < send_win) {
		if (cong_win <= skb->len) {
			*is_cwnd_limited = true;
			return true;
		}
	} else {
		if (send_win <= skb->len) {
			*is_rwnd_limited = true;
			return true;
		}
	}

	/* If this packet won't get more data, do not wait. */
	if ((FUNC2(skb)->tcp_flags & TCPHDR_FIN) ||
	    FUNC2(skb)->eor)
		goto send_now;

	return true;

send_now:
	return false;
}