#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ fin; int /*<<< orphan*/  window; scalar_t__ syn; scalar_t__ rst; scalar_t__ ack; } ;
struct TYPE_6__ {int snd_wscale; int /*<<< orphan*/  tstamp_ok; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int snd_wnd; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  write_seq; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  syn_fastopen; int /*<<< orphan*/  linger2; int /*<<< orphan*/  lsndtime; int /*<<< orphan*/  advmss; TYPE_2__ rx_opt; int /*<<< orphan*/  copied_seq; int /*<<< orphan*/  retrans_stamp; int /*<<< orphan*/  srtt_us; int /*<<< orphan*/  delivered; int /*<<< orphan*/  fastopen_rsk; } ;
struct sock {int sk_state; int sk_shutdown; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_socket; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_connection_sock {TYPE_3__* icsk_ca_ops; TYPE_1__* icsk_af_ops; } ;
struct TYPE_8__ {scalar_t__ end_seq; scalar_t__ seq; int /*<<< orphan*/  ack_seq; } ;
struct TYPE_7__ {int /*<<< orphan*/  cong_control; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* conn_request ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB ; 
 int FLAG_NO_CHALLENGE_ACK ; 
 int FLAG_SLOWPATH ; 
 int FLAG_UPDATE_TS_RECENT ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_WAKE_IO ; 
 int /*<<< orphan*/  TCPOLEN_TSTAMP_ALIGNED ; 
#define  TCP_CLOSE 137 
#define  TCP_CLOSE_WAIT 136 
#define  TCP_CLOSING 135 
#define  TCP_ESTABLISHED 134 
#define  TCP_FIN_WAIT1 133 
#define  TCP_FIN_WAIT2 132 
#define  TCP_LAST_ACK 131 
#define  TCP_LISTEN 130 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
#define  TCP_SYN_RECV 129 
#define  TCP_SYN_SENT 128 
 int TCP_TIMEWAIT_LEN ; 
 int TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct inet_connection_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct request_sock* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 scalar_t__ FUNC26 (struct sock*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,struct sk_buff*,struct request_sock*,int,int*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC33 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC34 (struct sock*) ; 
 int FUNC35 (struct sock*) ; 
 struct tcphdr* FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct tcp_sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (struct sock*) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 int /*<<< orphan*/  FUNC40 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC41 (struct sock*) ; 
 int FUNC42 (struct sock*,struct sk_buff*,struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC43 (struct sock*) ; 
 int /*<<< orphan*/  FUNC44 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC45 (struct sock*,int) ; 
 struct tcp_sock* FUNC46 (struct sock*) ; 
 int /*<<< orphan*/  FUNC47 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC48 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC49 (struct sock*) ; 
 int /*<<< orphan*/  FUNC50 (struct sock*) ; 
 int /*<<< orphan*/  FUNC51 (struct sock*) ; 
 int /*<<< orphan*/  FUNC52 (struct sock*,struct sk_buff*,struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC53 (struct sock*,struct sk_buff*,struct tcphdr const*,int /*<<< orphan*/ ) ; 

int FUNC54(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC46(sk);
	struct inet_connection_sock *icsk = FUNC8(sk);
	const struct tcphdr *th = FUNC36(skb);
	struct request_sock *req;
	int queued = 0;
	bool acceptable;

	switch (sk->sk_state) {
	case TCP_CLOSE:
		goto discard;

	case TCP_LISTEN:
		if (th->ack)
			return 1;

		if (th->rst)
			goto discard;

		if (th->syn) {
			if (th->fin)
				goto discard;
			/* It is possible that we process SYN packets from backlog,
			 * so we need to make sure to disable BH and RCU right there.
			 */
			FUNC15();
			FUNC10();
			acceptable = icsk->icsk_af_ops->conn_request(sk, skb) >= 0;
			FUNC11();
			FUNC16();

			if (!acceptable)
				return 1;
			FUNC7(skb);
			return 0;
		}
		goto discard;

	case TCP_SYN_SENT:
		tp->rx_opt.saw_tstamp = 0;
		FUNC40(tp);
		queued = FUNC42(sk, skb, th);
		if (queued >= 0)
			return queued;

		/* Do step6 onward by hand. */
		FUNC52(sk, skb, th);
		FUNC4(skb);
		FUNC30(sk);
		return 0;
	}

	FUNC40(tp);
	tp->rx_opt.saw_tstamp = 0;
	req = FUNC14(tp->fastopen_rsk,
					FUNC12(sk));
	if (req) {
		bool req_stolen;

		FUNC2(sk->sk_state != TCP_SYN_RECV &&
		    sk->sk_state != TCP_FIN_WAIT1);

		if (!FUNC28(sk, skb, req, true, &req_stolen))
			goto discard;
	}

	if (!th->ack && !th->rst && !th->syn)
		goto discard;

	if (!FUNC53(sk, skb, th, 0))
		return 0;

	/* step 5: check the ACK field */
	acceptable = FUNC26(sk, skb, FLAG_SLOWPATH |
				      FLAG_UPDATE_TS_RECENT |
				      FLAG_NO_CHALLENGE_ACK) > 0;

	if (!acceptable) {
		if (sk->sk_state == TCP_SYN_RECV)
			return 1;	/* send one RST */
		FUNC44(sk, skb);
		goto discard;
	}
	switch (sk->sk_state) {
	case TCP_SYN_RECV:
		tp->delivered++; /* SYN-ACK delivery isn't tracked in tcp_ack */
		if (!tp->srtt_us)
			FUNC47(sk, req);

		if (req) {
			FUNC41(sk);
		} else {
			FUNC49(sk);
			tp->retrans_stamp = 0;
			FUNC37(sk, BPF_SOCK_OPS_PASSIVE_ESTABLISHED_CB);
			FUNC3(tp->copied_seq, tp->rcv_nxt);
		}
		FUNC19();
		FUNC45(sk, TCP_ESTABLISHED);
		sk->sk_state_change(sk);

		/* Note, that this wakeup is only for marginal crossed SYN case.
		 * Passively open sockets are not waked up, because
		 * sk->sk_sleep == NULL and sk->sk_socket == NULL.
		 */
		if (sk->sk_socket)
			FUNC18(sk, SOCK_WAKE_IO, POLL_OUT);

		tp->snd_una = FUNC1(skb)->ack_seq;
		tp->snd_wnd = FUNC13(th->window) << tp->rx_opt.snd_wscale;
		FUNC38(tp, FUNC1(skb)->seq);

		if (tp->rx_opt.tstamp_ok)
			tp->advmss -= TCPOLEN_TSTAMP_ALIGNED;

		if (!FUNC8(sk)->icsk_ca_ops->cong_control)
			FUNC51(sk);

		/* Prevent spurious tcp_cwnd_restart() on first data packet */
		tp->lsndtime = tcp_jiffies32;

		FUNC39(sk);
		FUNC33(tp);
		break;

	case TCP_FIN_WAIT1: {
		int tmo;

		if (req)
			FUNC41(sk);

		if (tp->snd_una != tp->write_seq)
			break;

		FUNC45(sk, TCP_FIN_WAIT2);
		sk->sk_shutdown |= SEND_SHUTDOWN;

		FUNC17(sk);

		if (!FUNC20(sk, SOCK_DEAD)) {
			/* Wake up lingering close() */
			sk->sk_state_change(sk);
			break;
		}

		if (tp->linger2 < 0) {
			FUNC31(sk);
			FUNC0(FUNC21(sk), LINUX_MIB_TCPABORTONDATA);
			return 1;
		}
		if (FUNC1(skb)->end_seq != FUNC1(skb)->seq &&
		    FUNC5(FUNC1(skb)->end_seq - th->fin, tp->rcv_nxt)) {
			/* Receive out of order FIN after close() */
			if (tp->syn_fastopen && th->fin)
				FUNC34(sk);
			FUNC31(sk);
			FUNC0(FUNC21(sk), LINUX_MIB_TCPABORTONDATA);
			return 1;
		}

		tmo = FUNC35(sk);
		if (tmo > TCP_TIMEWAIT_LEN) {
			FUNC9(sk, tmo - TCP_TIMEWAIT_LEN);
		} else if (th->fin || FUNC22(sk)) {
			/* Bad case. We could lose such FIN otherwise.
			 * It is not a big problem, but it looks confusing
			 * and not so rare event. We still can lose it now,
			 * if it spins in bh_lock_sock(), but it is really
			 * marginal case.
			 */
			FUNC9(sk, tmo);
		} else {
			FUNC48(sk, TCP_FIN_WAIT2, tmo);
			goto discard;
		}
		break;
	}

	case TCP_CLOSING:
		if (tp->snd_una == tp->write_seq) {
			FUNC48(sk, TCP_TIME_WAIT, 0);
			goto discard;
		}
		break;

	case TCP_LAST_ACK:
		if (tp->snd_una == tp->write_seq) {
			FUNC50(sk);
			FUNC31(sk);
			goto discard;
		}
		break;
	}

	/* step 6: check the URG bit */
	FUNC52(sk, skb, th);

	/* step 7: process the segment text */
	switch (sk->sk_state) {
	case TCP_CLOSE_WAIT:
	case TCP_CLOSING:
	case TCP_LAST_ACK:
		if (!FUNC6(FUNC1(skb)->seq, tp->rcv_nxt))
			break;
		/* fall through */
	case TCP_FIN_WAIT1:
	case TCP_FIN_WAIT2:
		/* RFC 793 says to queue data in these states,
		 * RFC 1122 says we MUST send a reset.
		 * BSD 4.4 also does reset.
		 */
		if (sk->sk_shutdown & RCV_SHUTDOWN) {
			if (FUNC1(skb)->end_seq != FUNC1(skb)->seq &&
			    FUNC5(FUNC1(skb)->end_seq - th->fin, tp->rcv_nxt)) {
				FUNC0(FUNC21(sk), LINUX_MIB_TCPABORTONDATA);
				FUNC43(sk);
				return 1;
			}
		}
		/* Fall through */
	case TCP_ESTABLISHED:
		FUNC29(sk, skb);
		queued = 1;
		break;
	}

	/* tcp_data could move socket to TIME-WAIT */
	if (sk->sk_state != TCP_CLOSE) {
		FUNC30(sk);
		FUNC27(sk);
	}

	if (!queued) {
discard:
		FUNC32(sk, skb);
	}
	return 0;
}