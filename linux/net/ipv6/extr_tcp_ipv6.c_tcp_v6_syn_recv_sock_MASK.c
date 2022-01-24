#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union tcp_md5_addr {int dummy; } tcp_md5_addr ;
struct tcp_sock {int /*<<< orphan*/  advmss; int /*<<< orphan*/ * af_specific; } ;
struct tcp_md5sig_key {int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
typedef  struct sock {int /*<<< orphan*/  sk_v6_daddr; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_v6_rcv_saddr; int /*<<< orphan*/  sk_gso_type; int /*<<< orphan*/  sk_backlog_rcv; } const sock ;
struct sk_buff {scalar_t__ protocol; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {scalar_t__ opt_flen; scalar_t__ opt_nflen; } ;
struct TYPE_7__ {int /*<<< orphan*/  all; } ;
struct ipv6_pinfo {int /*<<< orphan*/ * pktoptions; int /*<<< orphan*/ * opt; scalar_t__ flow_label; scalar_t__ repflow; scalar_t__ rcv_flowinfo; int /*<<< orphan*/  mcast_hops; int /*<<< orphan*/  mcast_oif; TYPE_1__ rxopt; int /*<<< orphan*/ * ipv6_fl_list; int /*<<< orphan*/ * ipv6_ac_list; int /*<<< orphan*/ * ipv6_mc_list; int /*<<< orphan*/  saddr; } ;
struct inet_sock {void* inet_rcv_saddr; void* inet_saddr; void* inet_daddr; int /*<<< orphan*/ * inet_opt; void* pinet6; } ;
struct inet_request_sock {int /*<<< orphan*/ * pktopts; struct ipv6_txoptions* ipv6_opt; int /*<<< orphan*/  ir_iif; int /*<<< orphan*/  ir_v6_loc_addr; int /*<<< orphan*/  ir_v6_rmt_addr; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/ * icsk_af_ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  ttl; } ;
struct TYPE_8__ {int /*<<< orphan*/  hop_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 void* LOOPBACK4_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ipv6_txoptions*) ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock const*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC8 (struct sock const*,struct flowi6*,struct request_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock const*,struct sk_buff*) ; 
 TYPE_6__* FUNC10 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock const*) ; 
 int FUNC12 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct inet_request_sock* FUNC14 (struct request_sock*) ; 
 struct inet_sock* FUNC15 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock const*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 TYPE_3__* FUNC19 (struct sk_buff*) ; 
 struct ipv6_txoptions* FUNC20 (struct sock const*,struct ipv6_txoptions*) ; 
 TYPE_2__* FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  ipv6_mapped ; 
 int /*<<< orphan*/  FUNC22 (struct ipv6_pinfo*,struct ipv6_pinfo const*,int) ; 
 struct ipv6_txoptions* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct request_sock*) ; 
 scalar_t__ FUNC25 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,struct sock const*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock const*,struct dst_entry*) ; 
 struct sock const* FUNC31 (struct sock const*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock const*) ; 
 void* FUNC33 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC34 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC35 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC36 (struct sock const*,union tcp_md5_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct tcp_sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC38 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC39 (struct sock const*) ; 
 int /*<<< orphan*/  tcp_sock_ipv6_mapped_specific ; 
 int /*<<< orphan*/  FUNC40 (struct sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_v4_do_rcv ; 
 struct sock const* FUNC41 (struct sock const*,struct sk_buff*,struct request_sock*,struct dst_entry*,struct request_sock*,int*) ; 
 int /*<<< orphan*/  FUNC42 (struct sk_buff*) ; 
 struct tcp_md5sig_key* FUNC43 (struct sock const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sock *FUNC45(const struct sock *sk, struct sk_buff *skb,
					 struct request_sock *req,
					 struct dst_entry *dst,
					 struct request_sock *req_unhash,
					 bool *own_req)
{
	struct inet_request_sock *ireq;
	struct ipv6_pinfo *newnp;
	const struct ipv6_pinfo *np = FUNC33(sk);
	struct ipv6_txoptions *opt;
	struct inet_sock *newinet;
	struct tcp_sock *newtp;
	struct sock *newsk;
#ifdef CONFIG_TCP_MD5SIG
	struct tcp_md5sig_key *key;
#endif
	struct flowi6 fl6;

	if (skb->protocol == FUNC7(ETH_P_IP)) {
		/*
		 *	v6 mapped
		 */

		newsk = FUNC41(sk, skb, req, dst,
					     req_unhash, own_req);

		if (!newsk)
			return NULL;

		FUNC15(newsk)->pinet6 = FUNC33(newsk);

		newinet = FUNC15(newsk);
		newnp = FUNC33(newsk);
		newtp = FUNC39(newsk);

		FUNC22(newnp, np, sizeof(struct ipv6_pinfo));

		newnp->saddr = newsk->sk_v6_rcv_saddr;

		FUNC10(newsk)->icsk_af_ops = &ipv6_mapped;
		newsk->sk_backlog_rcv = tcp_v4_do_rcv;
#ifdef CONFIG_TCP_MD5SIG
		newtp->af_specific = &tcp_sock_ipv6_mapped_specific;
#endif

		newnp->ipv6_mc_list = NULL;
		newnp->ipv6_ac_list = NULL;
		newnp->ipv6_fl_list = NULL;
		newnp->pktoptions  = NULL;
		newnp->opt	   = NULL;
		newnp->mcast_oif   = FUNC13(skb);
		newnp->mcast_hops  = FUNC19(skb)->ttl;
		newnp->rcv_flowinfo = 0;
		if (np->repflow)
			newnp->flow_label = 0;

		/*
		 * No need to charge this sock to the relevant IPv6 refcnt debug socks count
		 * here, tcp_create_openreq_child now does this for us, see the comment in
		 * that function for the gory details. -acme
		 */

		/* It is tricky place. Until this moment IPv4 tcp
		   worked with IPv6 icsk.icsk_af_ops.
		   Sync it now.
		 */
		FUNC40(newsk, FUNC10(newsk)->icsk_pmtu_cookie);

		return newsk;
	}

	ireq = FUNC14(req);

	if (FUNC25(sk))
		goto out_overflow;

	if (!dst) {
		dst = FUNC8(sk, &fl6, req, IPPROTO_TCP);
		if (!dst)
			goto out;
	}

	newsk = FUNC31(sk, req, skb);
	if (!newsk)
		goto out_nonewsk;

	/*
	 * No need to charge this sock to the relevant IPv6 refcnt debug socks
	 * count here, tcp_create_openreq_child now does this for us, see the
	 * comment in that function for the gory details. -acme
	 */

	newsk->sk_gso_type = SKB_GSO_TCPV6;
	FUNC16(newsk, dst, NULL, NULL);
	FUNC9(newsk, skb);

	FUNC15(newsk)->pinet6 = FUNC33(newsk);

	newtp = FUNC39(newsk);
	newinet = FUNC15(newsk);
	newnp = FUNC33(newsk);

	FUNC22(newnp, np, sizeof(struct ipv6_pinfo));

	newsk->sk_v6_daddr = ireq->ir_v6_rmt_addr;
	newnp->saddr = ireq->ir_v6_loc_addr;
	newsk->sk_v6_rcv_saddr = ireq->ir_v6_loc_addr;
	newsk->sk_bound_dev_if = ireq->ir_iif;

	/* Now IPv6 options...

	   First: no IPv4 options.
	 */
	newinet->inet_opt = NULL;
	newnp->ipv6_mc_list = NULL;
	newnp->ipv6_ac_list = NULL;
	newnp->ipv6_fl_list = NULL;

	/* Clone RX bits */
	newnp->rxopt.all = np->rxopt.all;

	newnp->pktoptions = NULL;
	newnp->opt	  = NULL;
	newnp->mcast_oif  = FUNC42(skb);
	newnp->mcast_hops = FUNC21(skb)->hop_limit;
	newnp->rcv_flowinfo = FUNC17(FUNC21(skb));
	if (np->repflow)
		newnp->flow_label = FUNC18(FUNC21(skb));

	/* Clone native IPv6 options from listening socket (if any)

	   Yes, keeping reference count would be much more clever,
	   but we make one more one thing there: reattach optmem
	   to newsk.
	 */
	opt = ireq->ipv6_opt;
	if (!opt)
		opt = FUNC23(np->opt);
	if (opt) {
		opt = FUNC20(newsk, opt);
		FUNC0(newnp->opt, opt);
	}
	FUNC10(newsk)->icsk_ext_hdr_len = 0;
	if (opt)
		FUNC10(newsk)->icsk_ext_hdr_len = opt->opt_nflen +
						    opt->opt_flen;

	FUNC30(newsk, dst);

	FUNC40(newsk, FUNC5(dst));
	newtp->advmss = FUNC38(FUNC39(sk), FUNC4(dst));

	FUNC34(newsk);

	newinet->inet_daddr = newinet->inet_saddr = LOOPBACK4_IPV6;
	newinet->inet_rcv_saddr = LOOPBACK4_IPV6;

#ifdef CONFIG_TCP_MD5SIG
	/* Copy over the MD5 key from the original socket */
	key = tcp_v6_md5_do_lookup(sk, &newsk->sk_v6_daddr);
	if (key) {
		/* We're using one, so create a matching key
		 * on the newsk structure. If we fail to get
		 * memory, then we end up not copying the key
		 * across. Shucks.
		 */
		tcp_md5_do_add(newsk, (union tcp_md5_addr *)&newsk->sk_v6_daddr,
			       AF_INET6, 128, key->key, key->keylen,
			       sk_gfp_mask(sk, GFP_ATOMIC));
	}
#endif

	if (FUNC2(sk, newsk) < 0) {
		FUNC11(newsk);
		FUNC32(newsk);
		goto out;
	}
	*own_req = FUNC12(newsk, FUNC24(req_unhash));
	if (*own_req) {
		FUNC37(newtp, req);

		/* Clone pktoptions received with SYN, if we own the req */
		if (ireq->pktopts) {
			newnp->pktoptions = FUNC27(ireq->pktopts,
						      FUNC26(sk, GFP_ATOMIC));
			FUNC3(ireq->pktopts);
			ireq->pktopts = NULL;
			if (newnp->pktoptions) {
				FUNC44(newnp->pktoptions);
				FUNC28(newnp->pktoptions, newsk);
			}
		}
	}

	return newsk;

out_overflow:
	FUNC1(FUNC29(sk), LINUX_MIB_LISTENOVERFLOWS);
out_nonewsk:
	FUNC6(dst);
out:
	FUNC35(sk);
	return NULL;
}