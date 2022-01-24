#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;
typedef  struct TYPE_20__   TYPE_13__ ;
typedef  struct TYPE_19__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  tcp_opt ;
struct tcphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  seq; scalar_t__ rst; int /*<<< orphan*/  ack; int /*<<< orphan*/  ack_seq; } ;
struct tcp_sock {scalar_t__ window_clamp; } ;
struct tcp_request_sock {int tfo_listener; scalar_t__ snt_synack; int /*<<< orphan*/  txhash; scalar_t__ ts_off; void* snt_isn; void* rcv_isn; } ;
struct tcp_options_received {int /*<<< orphan*/  rcv_tsval; scalar_t__ saw_tstamp; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  snd_wscale; scalar_t__ rcv_tsecr; } ;
struct sock {int /*<<< orphan*/  sk_uid; } ;
struct sk_buff {int dummy; } ;
struct rtable {int /*<<< orphan*/  dst; } ;
struct request_sock {int mss; int /*<<< orphan*/  rsk_window_clamp; int /*<<< orphan*/  rsk_rcv_wnd; scalar_t__ num_retrans; int /*<<< orphan*/  ts_recent; } ;
struct ip_options {int /*<<< orphan*/  faddr; scalar_t__ srr; } ;
struct inet_request_sock {int /*<<< orphan*/  ecn_ok; int /*<<< orphan*/  rcv_wscale; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  ir_loc_addr; int /*<<< orphan*/  ir_rmt_addr; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ireq_opt; scalar_t__ smc_ok; scalar_t__ tstamp_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  snd_wscale; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_num; } ;
struct flowi4 {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __u32 ;
struct TYPE_26__ {int /*<<< orphan*/  sysctl_tcp_syncookies; } ;
struct TYPE_28__ {TYPE_5__ ipv4; } ;
struct TYPE_27__ {struct flowi4 ip4; } ;
struct TYPE_24__ {struct ip_options opt; } ;
struct TYPE_25__ {TYPE_3__ h4; } ;
struct TYPE_22__ {TYPE_6__ u; } ;
struct TYPE_23__ {TYPE_1__ fl; } ;
struct TYPE_21__ {TYPE_4__ header; } ;
struct TYPE_20__ {TYPE_2__ cork; } ;
struct TYPE_19__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESFAILED ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESRECV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTAX_INITRWND ; 
 int /*<<< orphan*/  RTAX_WINDOW ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 TYPE_18__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_12__*,struct tcphdr const*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_options_received*,TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct flowi4*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct flowi4*) ; 
 struct request_sock* FUNC12 (int /*<<< orphan*/ *,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*) ; 
 struct inet_request_sock* FUNC15 (struct request_sock*) ; 
 TYPE_13__* FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 TYPE_12__* FUNC18 (struct sk_buff*) ; 
 struct rtable* FUNC19 (TYPE_7__*,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC20 (struct tcp_options_received*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 void* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct request_sock*) ; 
 scalar_t__ FUNC26 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct request_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 struct sock* FUNC33 (struct sock*,struct sk_buff*,struct request_sock*,int /*<<< orphan*/ *,scalar_t__) ; 
 struct tcphdr* FUNC34 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_7__*,struct sk_buff*,struct tcp_options_received*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcp_request_sock_ops ; 
 struct tcp_request_sock* FUNC36 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC37 (struct sock*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC38 (struct sock*) ; 
 scalar_t__ FUNC39 (struct sock*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_7__*,struct sk_buff*) ; 

struct sock *FUNC41(struct sock *sk, struct sk_buff *skb)
{
	struct ip_options *opt = &FUNC4(skb)->header.h4.opt;
	struct tcp_options_received tcp_opt;
	struct inet_request_sock *ireq;
	struct tcp_request_sock *treq;
	struct tcp_sock *tp = FUNC38(sk);
	const struct tcphdr *th = FUNC34(skb);
	__u32 cookie = FUNC22(th->ack_seq) - 1;
	struct sock *ret = sk;
	struct request_sock *req;
	int mss;
	struct rtable *rt;
	__u8 rcv_wscale;
	struct flowi4 fl4;
	u32 tsoff = 0;

	if (!FUNC31(sk)->ipv4.sysctl_tcp_syncookies || !th->ack || th->rst)
		goto out;

	if (FUNC39(sk))
		goto out;

	mss = FUNC6(FUNC18(skb), th, cookie);
	if (mss == 0) {
		FUNC5(FUNC31(sk), LINUX_MIB_SYNCOOKIESFAILED);
		goto out;
	}

	FUNC5(FUNC31(sk), LINUX_MIB_SYNCOOKIESRECV);

	/* check for timestamp cookie support */
	FUNC20(&tcp_opt, 0, sizeof(tcp_opt));
	FUNC35(FUNC31(sk), skb, &tcp_opt, 0, NULL);

	if (tcp_opt.saw_tstamp && tcp_opt.rcv_tsecr) {
		tsoff = FUNC26(FUNC31(sk),
					  FUNC18(skb)->daddr,
					  FUNC18(skb)->saddr);
		tcp_opt.rcv_tsecr -= tsoff;
	}

	if (!FUNC8(FUNC31(sk), &tcp_opt))
		goto out;

	ret = NULL;
	req = FUNC12(&tcp_request_sock_ops, sk, false); /* for safety */
	if (!req)
		goto out;

	ireq = FUNC15(req);
	treq = FUNC36(req);
	treq->rcv_isn		= FUNC22(th->seq) - 1;
	treq->snt_isn		= cookie;
	treq->ts_off		= 0;
	treq->txhash		= FUNC21();
	req->mss		= mss;
	ireq->ir_num		= FUNC23(th->dest);
	ireq->ir_rmt_port	= th->source;
	FUNC30(FUNC24(req), FUNC18(skb)->daddr);
	FUNC29(FUNC24(req), FUNC18(skb)->saddr);
	ireq->ir_mark		= FUNC14(sk, skb);
	ireq->snd_wscale	= tcp_opt.snd_wscale;
	ireq->sack_ok		= tcp_opt.sack_ok;
	ireq->wscale_ok		= tcp_opt.wscale_ok;
	ireq->tstamp_ok		= tcp_opt.saw_tstamp;
	req->ts_recent		= tcp_opt.saw_tstamp ? tcp_opt.rcv_tsval : 0;
	treq->snt_synack	= 0;
	treq->tfo_listener	= false;
	if (FUNC0(CONFIG_SMC))
		ireq->smc_ok = 0;

	ireq->ir_iif = FUNC13(sk, skb);

	/* We throwed the options of the initial SYN away, so we hope
	 * the ACK carries the same options again (see RFC1122 4.2.3.8)
	 */
	FUNC2(ireq->ireq_opt, FUNC40(FUNC31(sk), skb));

	if (FUNC27(sk, skb, req)) {
		FUNC25(req);
		goto out;
	}

	req->num_retrans = 0;

	/*
	 * We need to lookup the route here to get at the correct
	 * window size. We should better make sure that the window size
	 * hasn't changed since we received the original syn, but I see
	 * no easy way to do this.
	 */
	FUNC10(&fl4, ireq->ir_iif, ireq->ir_mark,
			   FUNC3(sk), RT_SCOPE_UNIVERSE, IPPROTO_TCP,
			   FUNC17(sk),
			   opt->srr ? opt->faddr : ireq->ir_rmt_addr,
			   ireq->ir_loc_addr, th->source, th->dest, sk->sk_uid);
	FUNC28(req, FUNC11(&fl4));
	rt = FUNC19(FUNC31(sk), &fl4);
	if (FUNC1(rt)) {
		FUNC25(req);
		goto out;
	}

	/* Try to redo what tcp_v4_send_synack did. */
	req->rsk_window_clamp = tp->window_clamp ? :FUNC9(&rt->dst, RTAX_WINDOW);

	FUNC37(sk, FUNC32(sk), req->mss,
				  &req->rsk_rcv_wnd, &req->rsk_window_clamp,
				  ireq->wscale_ok, &rcv_wscale,
				  FUNC9(&rt->dst, RTAX_INITRWND));

	ireq->rcv_wscale  = rcv_wscale;
	ireq->ecn_ok = FUNC7(&tcp_opt, FUNC31(sk), &rt->dst);

	ret = FUNC33(sk, skb, req, &rt->dst, tsoff);
	/* ip_queue_xmit() depends on our flow being setup
	 * Normal sockets get it right from inet_csk_route_child_sock()
	 */
	if (ret)
		FUNC16(ret)->cork.fl.u.ip4 = fl4;
out:	return ret;
}