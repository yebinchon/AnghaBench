#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_16__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  tcp_opt ;
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; scalar_t__ rst; int /*<<< orphan*/  ack; int /*<<< orphan*/  ack_seq; } ;
struct tcp_sock {scalar_t__ window_clamp; } ;
struct tcp_request_sock {int tfo_listener; int /*<<< orphan*/  txhash; scalar_t__ ts_off; void* snt_isn; void* rcv_isn; scalar_t__ snt_synack; } ;
struct TYPE_21__ {int /*<<< orphan*/  s6_addr32; } ;
struct TYPE_17__ {int /*<<< orphan*/  s6_addr32; } ;
struct tcp_options_received {int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_oif; TYPE_2__ saddr; TYPE_10__ daddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  rcv_tsval; scalar_t__ saw_tstamp; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  snd_wscale; scalar_t__ rcv_tsecr; } ;
struct sock {int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;
struct request_sock {int mss; int /*<<< orphan*/  rsk_window_clamp; int /*<<< orphan*/  rsk_rcv_wnd; int /*<<< orphan*/  ts_recent; scalar_t__ num_retrans; } ;
struct TYPE_23__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_24__ {TYPE_4__ bits; } ;
struct ipv6_pinfo {int /*<<< orphan*/  opt; TYPE_5__ rxopt; } ;
struct inet_request_sock {int /*<<< orphan*/  ecn_ok; int /*<<< orphan*/  rcv_wscale; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  ir_rmt_port; int /*<<< orphan*/  ir_mark; int /*<<< orphan*/  ir_iif; TYPE_2__ ir_v6_loc_addr; TYPE_10__ ir_v6_rmt_addr; scalar_t__ smc_ok; scalar_t__ tstamp_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  snd_wscale; struct sk_buff* pktopts; int /*<<< orphan*/  ir_num; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int /*<<< orphan*/  flowi6_uid; int /*<<< orphan*/  fl6_sport; int /*<<< orphan*/  fl6_dport; int /*<<< orphan*/  flowi6_mark; int /*<<< orphan*/  flowi6_oif; TYPE_2__ saddr; TYPE_10__ daddr; int /*<<< orphan*/  flowi6_proto; int /*<<< orphan*/  rcv_tsval; scalar_t__ saw_tstamp; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  snd_wscale; scalar_t__ rcv_tsecr; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl6 ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __u32 ;
struct TYPE_26__ {TYPE_2__ daddr; TYPE_10__ saddr; } ;
struct TYPE_20__ {int /*<<< orphan*/  sysctl_tcp_syncookies; } ;
struct TYPE_25__ {TYPE_1__ ipv4; } ;
struct TYPE_22__ {int /*<<< orphan*/  h6; } ;
struct TYPE_19__ {TYPE_3__ header; } ;
struct TYPE_18__ {int /*<<< orphan*/  inet_sport; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int IPV6_ADDR_LINKLOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESFAILED ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESRECV ; 
 int /*<<< orphan*/  RTAX_INITRWND ; 
 int /*<<< orphan*/  RTAX_WINDOW ; 
 TYPE_16__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_9__*,struct tcphdr const*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_options_received*,TYPE_6__*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 struct in6_addr* FUNC8 (struct tcp_options_received*,int /*<<< orphan*/ ,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_options_received*) ; 
 struct ipv6_pinfo* FUNC10 (struct sock*) ; 
 struct request_sock* FUNC11 (int /*<<< orphan*/ *,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct sk_buff*) ; 
 struct inet_request_sock* FUNC14 (struct request_sock*) ; 
 TYPE_11__* FUNC15 (struct sock*) ; 
 struct dst_entry* FUNC16 (struct sock*,struct tcp_options_received*,struct in6_addr*) ; 
 int FUNC17 (TYPE_10__*) ; 
 TYPE_9__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct tcp_options_received*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 void* FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct request_sock*) ; 
 scalar_t__ FUNC27 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct request_sock*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC30 (struct sock*) ; 
 int /*<<< orphan*/  tcp6_request_sock_ops ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 
 struct sock* FUNC32 (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*,scalar_t__) ; 
 struct tcphdr* FUNC33 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*,struct sk_buff*,struct tcp_options_received*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tcp_request_sock* FUNC35 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC36 (struct sock*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC37 (struct sock*) ; 
 scalar_t__ FUNC38 (struct sock*) ; 
 int /*<<< orphan*/  FUNC39 (struct sk_buff*) ; 

struct sock *FUNC40(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_options_received tcp_opt;
	struct inet_request_sock *ireq;
	struct tcp_request_sock *treq;
	struct ipv6_pinfo *np = FUNC10(sk);
	struct tcp_sock *tp = FUNC37(sk);
	const struct tcphdr *th = FUNC33(skb);
	__u32 cookie = FUNC22(th->ack_seq) - 1;
	struct sock *ret = sk;
	struct request_sock *req;
	int mss;
	struct dst_entry *dst;
	__u8 rcv_wscale;
	u32 tsoff = 0;

	if (!FUNC30(sk)->ipv4.sysctl_tcp_syncookies || !th->ack || th->rst)
		goto out;

	if (FUNC38(sk))
		goto out;

	mss = FUNC4(FUNC18(skb), th, cookie);
	if (mss == 0) {
		FUNC3(FUNC30(sk), LINUX_MIB_SYNCOOKIESFAILED);
		goto out;
	}

	FUNC3(FUNC30(sk), LINUX_MIB_SYNCOOKIESRECV);

	/* check for timestamp cookie support */
	FUNC20(&tcp_opt, 0, sizeof(tcp_opt));
	FUNC34(FUNC30(sk), skb, &tcp_opt, 0, NULL);

	if (tcp_opt.saw_tstamp && tcp_opt.rcv_tsecr) {
		tsoff = FUNC27(FUNC30(sk),
					    FUNC18(skb)->daddr.s6_addr32,
					    FUNC18(skb)->saddr.s6_addr32);
		tcp_opt.rcv_tsecr -= tsoff;
	}

	if (!FUNC6(FUNC30(sk), &tcp_opt))
		goto out;

	ret = NULL;
	req = FUNC11(&tcp6_request_sock_ops, sk, false);
	if (!req)
		goto out;

	ireq = FUNC14(req);
	treq = FUNC35(req);
	treq->tfo_listener = false;

	if (FUNC28(sk, skb, req))
		goto out_free;

	req->mss = mss;
	ireq->ir_rmt_port = th->source;
	ireq->ir_num = FUNC23(th->dest);
	ireq->ir_v6_rmt_addr = FUNC18(skb)->saddr;
	ireq->ir_v6_loc_addr = FUNC18(skb)->daddr;
	if (FUNC19(sk, skb, &FUNC2(skb)->header.h6) ||
	    np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
	    np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
		FUNC25(&skb->users);
		ireq->pktopts = skb;
	}

	ireq->ir_iif = FUNC12(sk, skb);
	/* So that link locals have meaning */
	if (!sk->sk_bound_dev_if &&
	    FUNC17(&ireq->ir_v6_rmt_addr) & IPV6_ADDR_LINKLOCAL)
		ireq->ir_iif = FUNC39(skb);

	ireq->ir_mark = FUNC13(sk, skb);

	req->num_retrans = 0;
	ireq->snd_wscale	= tcp_opt.snd_wscale;
	ireq->sack_ok		= tcp_opt.sack_ok;
	ireq->wscale_ok		= tcp_opt.wscale_ok;
	ireq->tstamp_ok		= tcp_opt.saw_tstamp;
	req->ts_recent		= tcp_opt.saw_tstamp ? tcp_opt.rcv_tsval : 0;
	treq->snt_synack	= 0;
	treq->rcv_isn = FUNC22(th->seq) - 1;
	treq->snt_isn = cookie;
	treq->ts_off = 0;
	treq->txhash = FUNC21();
	if (FUNC0(CONFIG_SMC))
		ireq->smc_ok = 0;

	/*
	 * We need to lookup the dst_entry to get the correct window size.
	 * This is taken from tcp_v6_syn_recv_sock.  Somebody please enlighten
	 * me if there is a preferred way.
	 */
	{
		struct in6_addr *final_p, final;
		struct flowi6 fl6;
		FUNC20(&fl6, 0, sizeof(fl6));
		fl6.flowi6_proto = IPPROTO_TCP;
		fl6.daddr = ireq->ir_v6_rmt_addr;
		final_p = FUNC8(&fl6, FUNC24(np->opt), &final);
		fl6.saddr = ireq->ir_v6_loc_addr;
		fl6.flowi6_oif = ireq->ir_iif;
		fl6.flowi6_mark = ireq->ir_mark;
		fl6.fl6_dport = ireq->ir_rmt_port;
		fl6.fl6_sport = FUNC15(sk)->inet_sport;
		fl6.flowi6_uid = sk->sk_uid;
		FUNC29(req, FUNC9(&fl6));

		dst = FUNC16(sk, &fl6, final_p);
		if (FUNC1(dst))
			goto out_free;
	}

	req->rsk_window_clamp = tp->window_clamp ? :FUNC7(dst, RTAX_WINDOW);
	FUNC36(sk, FUNC31(sk), req->mss,
				  &req->rsk_rcv_wnd, &req->rsk_window_clamp,
				  ireq->wscale_ok, &rcv_wscale,
				  FUNC7(dst, RTAX_INITRWND));

	ireq->rcv_wscale = rcv_wscale;
	ireq->ecn_ok = FUNC5(&tcp_opt, FUNC30(sk), dst);

	ret = FUNC32(sk, skb, req, dst, tsoff);
out:
	return ret;
out_free:
	FUNC26(req);
	return NULL;
}