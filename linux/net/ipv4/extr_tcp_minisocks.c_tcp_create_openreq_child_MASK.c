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
typedef  void* u32 ;
struct tcphdr {int dummy; } ;
struct TYPE_7__ {int snd_wscale; int rcv_wscale; int /*<<< orphan*/  mss_clamp; scalar_t__ ts_recent_stamp; int /*<<< orphan*/  ts_recent; scalar_t__ tstamp_ok; scalar_t__ wscale_ok; int /*<<< orphan*/  sack_ok; } ;
struct tcp_sock {int segs_in; void* pushed_seq; int snd_wnd; int max_window; int tcp_header_len; int /*<<< orphan*/  fastopen_rsk; int /*<<< orphan*/ * fastopen_req; TYPE_3__ rx_opt; TYPE_1__* af_specific; int /*<<< orphan*/ * md5sig_info; int /*<<< orphan*/  tsoffset; int /*<<< orphan*/  retrans_stamp; void* undo_marker; int /*<<< orphan*/  window_clamp; int /*<<< orphan*/  rcv_wnd; int /*<<< orphan*/  rcv_ssthresh; int /*<<< orphan*/  write_seq; int /*<<< orphan*/  total_retrans; void* lsndtime; int /*<<< orphan*/  rtt_min; int /*<<< orphan*/  tsorted_sent_queue; int /*<<< orphan*/  tsq_node; void* snd_up; int /*<<< orphan*/  snd_nxt; void* snd_una; void* snd_sml; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  copied_seq; void* rcv_wup; scalar_t__ pred_flags; } ;
struct tcp_request_sock {int /*<<< orphan*/  ts_off; int /*<<< orphan*/  snt_synack; void* snt_isn; int /*<<< orphan*/  txhash; void* rcv_isn; } ;
typedef  struct sock {int /*<<< orphan*/  sk_txhash; } const sock ;
struct sk_buff {scalar_t__ len; } ;
struct request_sock {int /*<<< orphan*/  mss; scalar_t__ num_timeout; int /*<<< orphan*/  ts_recent; int /*<<< orphan*/  rsk_rcv_wnd; int /*<<< orphan*/  rsk_window_clamp; int /*<<< orphan*/  num_retrans; } ;
struct inet_request_sock {int snd_wscale; int rcv_wscale; scalar_t__ wscale_ok; int /*<<< orphan*/  sack_ok; scalar_t__ tstamp_ok; } ;
struct TYPE_6__ {scalar_t__ last_seg_size; void* lrcvtime; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; } ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
struct TYPE_5__ {scalar_t__ (* md5_lookup ) (struct sock const*,struct sock const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_KEEPOPEN ; 
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ; 
 int TCPOLEN_TSTAMP_ALIGNED ; 
 int /*<<< orphan*/  TCP_MIB_PASSIVEOPENS ; 
 scalar_t__ TCP_MSS_DEFAULT ; 
 int TCP_TS_HZ ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct inet_connection_sock* FUNC5 (struct sock const*) ; 
 struct sock const* FUNC6 (struct sock const*,struct request_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock const*,int /*<<< orphan*/ ) ; 
 struct inet_request_sock* FUNC8 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_sock*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*,unsigned int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tcp_sock*,struct request_sock*,struct tcp_sock*) ; 
 scalar_t__ FUNC15 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock const*) ; 
 scalar_t__ FUNC17 (struct sock const*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC18 (struct tcp_sock*,struct request_sock*) ; 
 TYPE_4__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct tcp_sock*,void*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock const*) ; 
 void* tcp_jiffies32 ; 
 struct tcp_request_sock* FUNC22 (struct request_sock*) ; 
 struct tcp_sock* FUNC23 (struct sock const*) ; 

struct sock *FUNC24(const struct sock *sk,
				      struct request_sock *req,
				      struct sk_buff *skb)
{
	struct sock *newsk = FUNC6(sk, req, GFP_ATOMIC);
	const struct inet_request_sock *ireq = FUNC8(req);
	struct tcp_request_sock *treq = FUNC22(req);
	struct inet_connection_sock *newicsk;
	struct tcp_sock *oldtp, *newtp;
	u32 seq;

	if (!newsk)
		return NULL;

	newicsk = FUNC5(newsk);
	newtp = FUNC23(newsk);
	oldtp = FUNC23(sk);

	FUNC14(oldtp, req, newtp);

	/* Now setup tcp_sock */
	newtp->pred_flags = 0;

	seq = treq->rcv_isn + 1;
	newtp->rcv_wup = seq;
	FUNC2(newtp->copied_seq, seq);
	FUNC2(newtp->rcv_nxt, seq);
	newtp->segs_in = 1;

	seq = treq->snt_isn + 1;
	newtp->snd_sml = newtp->snd_una = seq;
	FUNC2(newtp->snd_nxt, seq);
	newtp->snd_up = seq;

	FUNC0(&newtp->tsq_node);
	FUNC0(&newtp->tsorted_sent_queue);

	FUNC20(newtp, treq->rcv_isn);

	FUNC12(&newtp->rtt_min, tcp_jiffies32, ~0U);
	newicsk->icsk_ack.lrcvtime = tcp_jiffies32;

	newtp->lsndtime = tcp_jiffies32;
	newsk->sk_txhash = treq->txhash;
	newtp->total_retrans = req->num_retrans;

	FUNC21(newsk);
	FUNC2(newtp->write_seq, newtp->pushed_seq = treq->snt_isn + 1);

	if (FUNC15(newsk, SOCK_KEEPOPEN))
		FUNC7(newsk,
					       FUNC9(newtp));

	newtp->rx_opt.tstamp_ok = ireq->tstamp_ok;
	newtp->rx_opt.sack_ok = ireq->sack_ok;
	newtp->window_clamp = req->rsk_window_clamp;
	newtp->rcv_ssthresh = req->rsk_rcv_wnd;
	newtp->rcv_wnd = req->rsk_rcv_wnd;
	newtp->rx_opt.wscale_ok = ireq->wscale_ok;
	if (newtp->rx_opt.wscale_ok) {
		newtp->rx_opt.snd_wscale = ireq->snd_wscale;
		newtp->rx_opt.rcv_wscale = ireq->rcv_wscale;
	} else {
		newtp->rx_opt.snd_wscale = newtp->rx_opt.rcv_wscale = 0;
		newtp->window_clamp = FUNC11(newtp->window_clamp, 65535U);
	}
	newtp->snd_wnd = FUNC13(FUNC19(skb)->window) << newtp->rx_opt.snd_wscale;
	newtp->max_window = newtp->snd_wnd;

	if (newtp->rx_opt.tstamp_ok) {
		newtp->rx_opt.ts_recent = req->ts_recent;
		newtp->rx_opt.ts_recent_stamp = FUNC10();
		newtp->tcp_header_len = sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED;
	} else {
		newtp->rx_opt.ts_recent_stamp = 0;
		newtp->tcp_header_len = sizeof(struct tcphdr);
	}
	if (req->num_timeout) {
		newtp->undo_marker = treq->snt_isn;
		newtp->retrans_stamp = FUNC4(treq->snt_synack,
					       USEC_PER_SEC / TCP_TS_HZ);
	}
	newtp->tsoffset = treq->ts_off;
#ifdef CONFIG_TCP_MD5SIG
	newtp->md5sig_info = NULL;	/*XXX*/
	if (newtp->af_specific->md5_lookup(sk, newsk))
		newtp->tcp_header_len += TCPOLEN_MD5SIG_ALIGNED;
#endif
	if (skb->len >= TCP_MSS_DEFAULT + newtp->tcp_header_len)
		newicsk->icsk_ack.last_seg_size = skb->len - newtp->tcp_header_len;
	newtp->rx_opt.mss_clamp = req->mss;
	FUNC18(newtp, req);
	newtp->fastopen_req = NULL;
	FUNC1(newtp->fastopen_rsk, NULL);

	FUNC3(FUNC16(sk), TCP_MIB_PASSIVEOPENS);

	return newsk;
}