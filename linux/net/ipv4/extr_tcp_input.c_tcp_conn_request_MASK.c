#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  user_mss; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct tcp_request_sock_ops {int /*<<< orphan*/  (* send_synack ) (struct sock*,struct dst_entry*,struct flowi*,struct request_sock*,struct tcp_fastopen_cookie*,int /*<<< orphan*/ ) ;scalar_t__ (* init_seq ) (struct sk_buff*) ;struct dst_entry* (* route_req ) (struct sock*,struct flowi*,struct request_sock*) ;scalar_t__ (* init_ts_off ) (struct net*,struct sk_buff*) ;int /*<<< orphan*/  (* init_req ) (struct request_sock*,struct sock*,struct sk_buff*) ;int /*<<< orphan*/  mss_clamp; } ;
struct tcp_options_received {scalar_t__ tstamp_ok; scalar_t__ saw_tstamp; scalar_t__ smc_ok; int /*<<< orphan*/  user_mss; int /*<<< orphan*/  mss_clamp; } ;
struct tcp_fastopen_cookie {int len; } ;
struct sock {int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct request_sock_ops {int /*<<< orphan*/  family; int /*<<< orphan*/  slab_name; } ;
struct request_sock {scalar_t__ cookie_ts; int /*<<< orphan*/  mss; } ;
struct TYPE_9__ {int sysctl_tcp_syncookies; int sysctl_max_syn_backlog; } ;
struct net {TYPE_2__ ipv4; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_14__ {scalar_t__ tcp_tw_isn; } ;
struct TYPE_13__ {scalar_t__ ecn_ok; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  no_srccheck; } ;
struct TYPE_12__ {int /*<<< orphan*/  transparent; } ;
struct TYPE_11__ {int /*<<< orphan*/  source; } ;
struct TYPE_10__ {int tfo_listener; int /*<<< orphan*/  txhash; scalar_t__ snt_isn; scalar_t__ ts_off; struct tcp_request_sock_ops const* af_specific; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SMC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  TCP_SYNACK_COOKIE ; 
 int /*<<< orphan*/  TCP_SYNACK_FASTOPEN ; 
 int /*<<< orphan*/  TCP_SYNACK_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct tcp_request_sock_ops const*,struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct request_sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*) ; 
 struct request_sock* FUNC11 (struct request_sock_ops*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct sk_buff*) ; 
 TYPE_6__* FUNC13 (struct request_sock*) ; 
 TYPE_5__* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct request_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,struct request_sock*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct request_sock*) ; 
 scalar_t__ FUNC22 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct net* FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct request_sock*,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC28 (struct net*,struct sk_buff*) ; 
 struct dst_entry* FUNC29 (struct sock*,struct flowi*,struct request_sock*) ; 
 scalar_t__ FUNC30 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*,struct dst_entry*,struct flowi*,struct request_sock*,struct tcp_fastopen_cookie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 int /*<<< orphan*/  FUNC33 (struct sock*,struct dst_entry*,struct flowi*,struct request_sock*,struct tcp_fastopen_cookie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC35 (struct request_sock*,struct sk_buff*,struct sock*,struct dst_entry*) ; 
 TYPE_4__* FUNC36 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC37 (struct sock*) ; 
 int /*<<< orphan*/  FUNC38 (struct request_sock*,struct tcp_options_received*,struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC39 (struct request_sock*,struct sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC40 (struct net*,struct sk_buff*,struct tcp_options_received*,int /*<<< orphan*/ ,struct tcp_fastopen_cookie*) ; 
 int /*<<< orphan*/  FUNC41 (struct request_sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC42 (struct sock*,struct request_sock*,struct sk_buff*) ; 
 TYPE_3__* FUNC43 (struct request_sock*) ; 
 struct tcp_sock* FUNC44 (struct sock*) ; 
 int FUNC45 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (struct sock*) ; 
 struct sock* FUNC47 (struct sock*,struct sk_buff*,struct request_sock*,struct tcp_fastopen_cookie*,struct dst_entry*) ; 

int FUNC48(struct request_sock_ops *rsk_ops,
		     const struct tcp_request_sock_ops *af_ops,
		     struct sock *sk, struct sk_buff *skb)
{
	struct tcp_fastopen_cookie foc = { .len = -1 };
	__u32 isn = FUNC2(skb)->tcp_tw_isn;
	struct tcp_options_received tmp_opt;
	struct tcp_sock *tp = FUNC44(sk);
	struct net *net = FUNC25(sk);
	struct sock *fastopen_sk = NULL;
	struct request_sock *req;
	bool want_cookie = false;
	struct dst_entry *dst;
	struct flowi fl;

	/* TW buckets are converted to open requests without
	 * limitations, they conserve resources and peer is
	 * evidently real one.
	 */
	if ((net->ipv4.sysctl_tcp_syncookies == 2 ||
	     FUNC9(sk)) && !isn) {
		want_cookie = FUNC45(sk, rsk_ops->slab_name);
		if (!want_cookie)
			goto drop;
	}

	if (FUNC23(sk)) {
		FUNC1(FUNC25(sk), LINUX_MIB_LISTENOVERFLOWS);
		goto drop;
	}

	req = FUNC11(rsk_ops, sk, !want_cookie);
	if (!req)
		goto drop;

	FUNC43(req)->af_specific = af_ops;
	FUNC43(req)->ts_off = 0;

	FUNC34(&tmp_opt);
	tmp_opt.mss_clamp = af_ops->mss_clamp;
	tmp_opt.user_mss  = tp->rx_opt.user_mss;
	FUNC40(FUNC25(sk), skb, &tmp_opt, 0,
			  want_cookie ? NULL : &foc);

	if (want_cookie && !tmp_opt.saw_tstamp)
		FUNC34(&tmp_opt);

	if (FUNC0(CONFIG_SMC) && want_cookie)
		tmp_opt.smc_ok = 0;

	tmp_opt.tstamp_ok = tmp_opt.saw_tstamp;
	FUNC38(req, &tmp_opt, skb, sk);
	FUNC13(req)->no_srccheck = FUNC14(sk)->transparent;

	/* Note: tcp_v6_init_req() might override ir_iif for link locals */
	FUNC13(req)->ir_iif = FUNC12(sk, skb);

	af_ops->init_req(req, sk, skb);

	if (FUNC22(sk, skb, req))
		goto drop_and_free;

	if (tmp_opt.tstamp_ok)
		FUNC43(req)->ts_off = af_ops->init_ts_off(net, skb);

	dst = af_ops->route_req(sk, &fl, req);
	if (!dst)
		goto drop_and_free;

	if (!want_cookie && !isn) {
		/* Kill the following clause, if you dislike this way. */
		if (!net->ipv4.sysctl_tcp_syncookies &&
		    (net->ipv4.sysctl_max_syn_backlog - FUNC10(sk) <
		     (net->ipv4.sysctl_max_syn_backlog >> 2)) &&
		    !FUNC41(req, dst)) {
			/* Without syncookies last quarter of
			 * backlog is filled with destinations,
			 * proven to be alive.
			 * It means that we continue to communicate
			 * to destinations, already remembered
			 * to the moment of synflood.
			 */
			FUNC17(req, FUNC16(FUNC36(skb)->source),
				    rsk_ops->family);
			goto drop_and_release;
		}

		isn = af_ops->init_seq(skb);
	}

	FUNC35(req, skb, sk, dst);

	if (want_cookie) {
		isn = FUNC5(af_ops, sk, skb, &req->mss);
		req->cookie_ts = tmp_opt.tstamp_ok;
		if (!tmp_opt.tstamp_ok)
			FUNC13(req)->ecn_ok = 0;
	}

	FUNC43(req)->snt_isn = isn;
	FUNC43(req)->txhash = FUNC15();
	FUNC39(req, sk, dst);
	FUNC24(FUNC18(req), skb);
	if (!want_cookie) {
		FUNC42(sk, req, skb);
		fastopen_sk = FUNC47(sk, skb, req, &foc, dst);
	}
	if (fastopen_sk) {
		af_ops->send_synack(fastopen_sk, dst, &fl, req,
				    &foc, TCP_SYNACK_FASTOPEN);
		/* Add the child socket directly into the accept queue */
		if (!FUNC7(sk, req, fastopen_sk)) {
			FUNC19(fastopen_sk, req, false);
			FUNC4(fastopen_sk);
			FUNC26(fastopen_sk);
			goto drop_and_free;
		}
		sk->sk_data_ready(sk);
		FUNC4(fastopen_sk);
		FUNC26(fastopen_sk);
	} else {
		FUNC43(req)->tfo_listener = false;
		if (!want_cookie)
			FUNC8(sk, req,
				FUNC46((struct sock *)req));
		af_ops->send_synack(sk, dst, &fl, req, &foc,
				    !want_cookie ? TCP_SYNACK_NORMAL :
						   TCP_SYNACK_COOKIE);
		if (want_cookie) {
			FUNC20(req);
			return 0;
		}
	}
	FUNC21(req);
	return 0;

drop_and_release:
	FUNC6(dst);
drop_and_free:
	FUNC3(req);
drop:
	FUNC37(sk);
	return 0;
}